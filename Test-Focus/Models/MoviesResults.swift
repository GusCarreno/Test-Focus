//
//  MoviesResults.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

struct MoviesResults {
    
    let movies: [Movie]
}

extension MoviesResults: Decodable {

    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }

    init?(data: Data) {
        guard let me = try? JSONDecoder.theMovieDB.decode(MoviesResults.self, from: data) else { return nil }
        self = me
    }
}
