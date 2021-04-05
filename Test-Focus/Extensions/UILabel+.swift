//
//  UILabel+.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import UIKit

extension UILabel {

    convenience init(font: UIFont,
                     color: UIColor = .black,
                     backgroundColor: UIColor = .clear,
                     lines: Int = 0,
                     alignment: NSTextAlignment = .left) {
        self.init()

        self.font            = font
        self.textColor       = color
        self.backgroundColor = backgroundColor
        self.numberOfLines   = lines
        self.textAlignment   = alignment
    }
}

