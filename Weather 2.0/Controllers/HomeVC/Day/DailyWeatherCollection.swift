//
//  DailyWeather.swift
//  Weather 2.0
//
//  Created by Roman on 23.11.2022.
//

import UIKit
import SwiftUI

class HoursCollection: RootCollectionView, UICollectionViewDataSource, UICollectionViewDelegate {

    let cells = [WeatherModel]()
    
    init() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
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
        return cells.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: HourCollectionViewCell.reuseId, for: indexPath)
        return cell
    }

}

extension HoursCollection {
    
    override func setupViews() {}
    override func constraintViews() {
    }
    override func configureAppearence() {
    
        
    }
}

