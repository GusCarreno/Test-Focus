//
//  UIImageView+.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import UIKit

extension UIImageView {

    convenience init(_ image: UIImage? = nil, contentMode: UIView.ContentMode) {
        self.init(image: image)
        self.contentMode = contentMode
    }
}

