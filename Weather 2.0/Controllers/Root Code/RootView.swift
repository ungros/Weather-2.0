//
//  RootView.swift
//  Weather 2.0
//
//  Created by Roman on 03.10.2022.
//

import UIKit

class RootView: UIView {
    
    let blurView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearence()
	
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension RootView {
    func setupViews() {}
    func constraintViews() {}
    func configureAppearence() {
        backgroundColor = R.Colors.rootView
    }
}
