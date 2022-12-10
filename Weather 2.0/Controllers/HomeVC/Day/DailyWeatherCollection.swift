//
//  DailyWeather.swift
//  Weather 2.0
//
//  Created by Roman on 23.11.2022.
//

import UIKit
import SwiftUI

class HoursCollection: RootCollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let cells = [WeatherModel]()
    
    init() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0.3
        
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = .green
        delegate = self
        dataSource = self
        register(HourCollectionViewCell.self, forCellWithReuseIdentifier: HourCollectionViewCell.reuseId)
    }
        required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 //cells.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: HourCollectionViewCell.reuseId, for: indexPath)
        if #available(iOS 16.0, *) {
            cell.contentConfiguration = UIHostingConfiguration {
                HourWeatherCell()
            }
        } else {
            // Fallback on earlier versions
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
  

}

extension HoursCollection {
    
    override func setupViews() {}
    override func constraintViews() {
    }
    override func configureAppearence() {
    
        
    }
}

