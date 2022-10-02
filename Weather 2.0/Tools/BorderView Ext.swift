//
//  BorderView Ext.swift
//  Weather 2.0
//
//  Created by Roman on 02.10.2022.
//

import UIKit

extension UIView {
    func addTopBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = .green
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height + height,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }
}
