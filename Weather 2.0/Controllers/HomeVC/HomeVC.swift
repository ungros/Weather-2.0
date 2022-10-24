//
//  HomeVC.swift
//Users/Roman/Documents/Weather 2.0/Weather 2.0.xcodeproj/  Weather 2.0
//
//  Created by Roman on 27.09.2022.
//

import UIKit
import CoreLocation

@available(iOS 16.0, *)
class HomeVC: Weather {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
//        configureNavBar()
        getUserLocation()
        getWeather(location: CLLocation(latitude: 0.5765, longitude: 4324))
    }
    
    
//    func configureNavBar() {
//        navigationController?.navigationBar.isHidden = true
//    }
    
}

