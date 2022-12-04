//
//  HourCell.swift
//  Weather 2.0
//
//  Created by Roman on 27.11.2022.
//

import UIKit

 class HourCollectionViewCell: RootCollectionViewCell {
    
     static let reuseId = "HourCollectionViewCell"
     
     let cellView: UIView = {
         let view = UIView()
         view.backgroundColor = .red
         
         return view
     }()
  
     override init(frame: CGRect) {
         super.init(frame: frame)
         
         addSubview(cellView)
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
}

@objc extension HourCollectionViewCell {
    override func setupViews() {}
    override func constraintViews() {}
    override func configureAppearence() {
        
    }
}
