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
    
    let hoursCollection = HoursCollection()
    
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
      
//      configureNavBar()
        getUserLocation()
        getWeather(location: CLLocation(latitude: 0.5765, longitude: 4324))
    }
    
    
//    func configureNavBar() {
//        navigationController?.navigationBar.isHidden = true
//    }
    
}


@available(iOS 16.0, *)
extension HomeVC: UICollectionViewDelegate {
    
    private func collectionView(_ collectionView: RootCollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        print("SSs")
    }
}


@available(iOS 16.0, *)
extension HomeVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = hoursCollection.dequeueReusableCell(withReuseIdentifier: "", for: indexPath)
        return cell
    }
    
}

//@available(iOS 16.0, *)
//extension HomeVC: UICollectionViewDelegateFlowLayout {}
