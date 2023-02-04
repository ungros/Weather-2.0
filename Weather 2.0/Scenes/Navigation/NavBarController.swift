//
//  NavBarController.swift
//  Weather 2.0
//
//  Created by Roman on 01.10.2022.
//

import UIKit

class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setNavBars()
        configureNavBar()
        
    }
    
     func configureNavBar() {
        view.backgroundColor = R.Colors.navigators
        navigationBar.isTranslucent = false // ?
     
        
        
        navigationBar.addBottomBorder(with: .red, height: 1)
 }
      
}
