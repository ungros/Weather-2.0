//
//  DailyWeather.swift
//  Weather 2.0
//
//  Created by Roman on 23.11.2022.
//

import UIKit
import SwiftUI

final class HoursCollection: RootCollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    let collectionView: UICollectionView = {
        let collectionView = UICollectionView()
        collectionView.backgroundColor = .red
        return collectionView
    }()
}

extension HoursCollection {
    
    override func setupViews() {}
    override func constraintViews() {}
    override func configureAppearence() {
    
    }
}

