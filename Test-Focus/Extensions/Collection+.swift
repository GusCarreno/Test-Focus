//
//  Collection+.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

extension Collection {

    // Gets element from collection safely.
    // - Parameter index: Index of element.
    subscript(safe index: Index) -> Iterator.Element? {
        if indices.contains(index) {
            return self[index]
        }
        return nil
    }
}
