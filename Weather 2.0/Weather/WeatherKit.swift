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
open class Weather: UIViewController, CLLocationManagerDelegate {
   
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
            } catch {
                print(String(describing: error))
            }
        }
    }
}

    
