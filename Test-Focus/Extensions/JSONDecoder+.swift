//
//  JSONDecoder+.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

extension JSONDecoder {

    /// Default JSON Decoder for The Movies DB.
    static let theMovieDB: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(.yyyyMMdd)
        return decoder
    }()
}
