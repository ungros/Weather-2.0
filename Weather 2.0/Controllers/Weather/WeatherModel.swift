//
//  WeatherModel.swift
//  Weather 2.0
//
//  Created by Roman on 28.11.2022.
//

import UIKit

struct WeatherModel {
    var weatherIcon: UIImage
    var place: String
    var temperature: String
    var description: String
//    var max: [UIImage : String]
//    var min: [UIImage : String]
    static func combineWeather() -> [WeatherModel] {
        let cloudy = WeatherModel(weatherIcon: R.Images.WeatherIcons.cloudy!,
                                  place: "Tokyo",
                                  temperature: "14",
                                  description: "Little cloudy")
        
        let rain = WeatherModel(weatherIcon: R.Images.WeatherIcons.cloudy!,
                                                            place: "Gamburg",
                                                            temperature: "15",
                                                            description: "Little raini")
                         
        
        return [cloudy, rain]
    }
    
}
