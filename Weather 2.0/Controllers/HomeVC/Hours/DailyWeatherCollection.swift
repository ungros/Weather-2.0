//
//  DailyWeather.swift
//  Weather 2.0
//
//  Created by Roman on 23.11.2022.
//

import UIKit
import SwiftUI

class HoursCollection: RootCollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        delegate = self
        dataSource = self
    }
        required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
}

extension HoursCollection {
    
    override func setupViews() {}
    override func constraintViews() {}
    override func configureAppearence() {
    
        
    }
}

