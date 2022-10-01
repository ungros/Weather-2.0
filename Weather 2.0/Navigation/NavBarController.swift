//
//  NavBarController.swift
//  Weather 2.0
//
//  Created by Roman on 01.10.2022.
//

import UIKit

final class NavBarController: UINavigationController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
    }
    
    private func configureNavBar() {
        view.backgroundColor = R.Colors.navigators
        navigationBar.isTranslucent = false // ?
    }
}
