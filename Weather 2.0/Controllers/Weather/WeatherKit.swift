//
//  WeatherKit.swift
//  Weather 2.0
//
//  Created by Roman on 04.10.2022.
//

import CoreLocation
import UIKit
import WeatherKit


@available(iOS 16.0, *)
class Weather: RootViewController, CLLocationManagerDelegate {
   
    let locationManager = CLLocationManager()
    let service = WeatherService()
    
    
    func getUserLocation() {
        locationManager.stopUpdatingLocation()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    func getWeather(location: CLLocation) {
        Task {
            do {
                let result = try await service.weather(for: location)
                print("Current: "+String(describing: result.currentWeather))
                print("Daily: "+String(describing: result.dailyForecast))
                print("Minute: "+String(describing: result.minuteForecast))
            } catch {
                print(String(describing: error))
            }
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        locationManager.stopUpdatingLocation()
        getWeather(location: location)
    }
}

    
