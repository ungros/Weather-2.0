//
//  RootViewController.swift
//  Weather 2.0
//
//  Created by Roman on 01.10.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearence()
    
    }
}

    @objc extension RootViewController {
        func setupViews() {}
        func constraintViews() {}
        func configureAppearence() {
            view.backgroundColor = R.Colors.background
        }
    }

