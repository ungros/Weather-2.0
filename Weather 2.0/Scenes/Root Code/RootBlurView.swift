//
//  RootBlurView.swift
//  Weather 2.0
//
//  Created by Roman on 27.10.2022.
//

import UIKit

class RootBlurView: UIVisualEffectView {
    
    let blurView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
}
