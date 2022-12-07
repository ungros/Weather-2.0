//
//  HomeVC.swift
//Users/Roman/Documents/Weather 2.0/Weather 2.0.xcodeproj/  Weather 2.0
//
//  Created by Roman on 27.09.2022.
//

import UIKit
import SwiftUI
import CoreLocation

@available(iOS 16.0, *)
class HomeVC: Weather {
    
    private let hoursCollection: HoursCollection = {
        let view = HoursCollection()
        view.backgroundColor = .yellow
        return view
    }()
    
    let hourVeatherCell = UIHostingController(rootView: HourWeatherCell())
    
    
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
      

        getUserLocation()
        getWeather(location: CLLocation(latitude: 0.5765, longitude: 4324))
        
        view.setupView(hoursCollection)
        
        
        constraintViews()
        
    }
    
    override func constraintViews() {
        NSLayoutConstraint.activate([

            hoursCollection.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            hoursCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hoursCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hoursCollection.heightAnchor.constraint(equalToConstant: 150),
          
        ])
    }

}

