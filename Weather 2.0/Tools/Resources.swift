//
//  Resources.swift
//  Weather 2.0
//
//  Created by Roman on 08.08.2022.
//

import UIKit

enum R {
    
    enum Colors {
        static let tabBarBackground =  #colorLiteral(red: 0.5594760149, green: 0.4969937842, blue: 0.645982788, alpha: 0.7031958082)
        static let background = UIColor(hexString: "#929DA5")
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
    

