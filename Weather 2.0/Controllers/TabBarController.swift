//
//  TabBarController.swift
//  Weather 2.0
//
//  Created by Roman on 20.09.2022.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case hone
    case search
    case world
}

final class TabBarController: UITabBarController {
    
   private func 
    
    
    private func generateViewController(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    
}

