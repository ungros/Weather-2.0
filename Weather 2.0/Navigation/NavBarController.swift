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
    
    //let navVC = NavBarController(rootViewController: WorldVC())
    
    
    
    
//    func setNavBars() {
//    viewControllers = [setViewController(viewController: HomeVC(), title: "hi"),
//                       setViewController(viewController: WorldVC(), title: "world")]
//
//    }
//
//    func setViewController(viewController: UIViewController, title: String) -> UIViewController {
//
//       // viewController.navigationItem.title = title
//        viewController.navigationController?.title = title
//        return(viewController)
//    }
}
