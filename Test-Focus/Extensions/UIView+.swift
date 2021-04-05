//
//  UIView+.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import UIKit

extension UIView {

    func add(subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}

