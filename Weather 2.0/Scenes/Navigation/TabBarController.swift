//
//  TabBarController.swift
//  Weather 2.0
//
//  Created by Roman on 20.09.2022.
//

import UIKit

//enum Tabs: Int, CaseIterable {
//    case hone
//    case search
//    case world
//}

final class TabBarController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBar()
        setupTabBar()
        
    }
    
    private func setTabBar(){
        if #available(iOS 16.0, *) {
            
            
            viewControllers = [
                setViewController(viewController: WorldVC(), title: R.Strings.TabBar.world, image: R.Images.TabBar.world),
                setViewController(viewController: HomeVC(), title: R.Strings.TabBar.home , image: R.Images.TabBar.home),
                setViewController(viewController: SearchVC(), title: R.Strings.TabBar.search, image: R.Images.TabBar.search)]
        } else {
            // Fallback on earlier versions
            return
        }
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
        
        tabBar.backgroundColor = R.Colors.navigators
        tabBar.tintColor = R.Colors.colorAccent
        //tabBar.barTintColor = R.Colors.tbItem
        
        
        
    } 
}



