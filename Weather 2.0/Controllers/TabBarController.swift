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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBar()
        setupTabBar()
    }
    
    private func setTabBar(){
        viewControllers = [
                           setViewController(viewController: SearchVC(), title: R.Strings.TabBar.search, image: R.Images.TabBar.search),
                           setViewController(viewController: HomeVC(), title: R.Strings.TabBar.home , image: R.Images.TabBar.home),
                           setViewController(viewController: WorldVC(), title: R.Strings.TabBar.world, image: R.Images.TabBar.world)]
    }
    
    
    private func setViewController(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setupTabBar() {
        selectedIndex = 1 //chose 1st TbSection
        
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        tabBar.backgroundColor = R.Colors.background
        tabBar.tintColor = .white
        //tabBar.barTintColor = R.Colors.tbItem
        
    }
    
    
}

