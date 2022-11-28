//
//  HourCell.swift
//  Weather 2.0
//
//  Created by Roman on 27.11.2022.
//

import UIKit

 class HourCollectionViewCell: RootCollectionViewCell {
    
     static let reuseId = "HourCollectionViewCell"
    
     let hourCell: RootCollectionViewCell = {
        
        
        let hourCell = RootCollectionViewCell()
        
        hourCell.backgroundColor = .green
        hourCell.bounds = .zero
        hourCell.layer.cornerRadius = 20
        
        return hourCell
    }()
    
    
}

@objc extension HourCollectionViewCell {
    override func setupViews() {}
    override func constraintViews() {}
    override func configureAppearence() {
        
    }
}
