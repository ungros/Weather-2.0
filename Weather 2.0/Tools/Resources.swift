//
//  Resources.swift
//  Weather 2.0
//
//  Created by Roman on 08.08.2022.
//

import UIKit

enum R {
    
    enum Colors {
        static let background = UIColor(hexString: "#F8F9F9")
        static let navigators = UIColor.white
        static let colorAccent = UIColor(hexString: "#020B11")
        static let separator = UIColor(hexString: "#E8ECEF")
      
    }
    enum Strings {
        enum TabBar {
            static let home = "Home"
            static let search = "Search"
            static let world = "World"
        }
        
    }
    
    enum Images {
        enum TabBar {
            static let home = UIImage(named: "HomeBar")
            static let search = UIImage(named: "SearchBar")
            static let world = UIImage(named: "WorldBar")
        }
    }
    
//    enum Fonts {
//        static func helveticaRegularr(with size: CGFloat) -> UIFont {
//            UIFont(name: "Helvetica", size: size) ?? UIFont
//        }
    }

