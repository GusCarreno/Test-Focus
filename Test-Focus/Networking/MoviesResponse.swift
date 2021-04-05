//
//  MoviesResponse.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

/// Movies response handler (JSON parsing).
enum MoviesResponse {
    case success(movies: [Movie])
    case failed(error: ApiErrorType)

    /// Parses data from API response.
    ///
    /// - Parameter jsonData: JSON as Data
    /// - Returns: MoviesResponse
    static func parse(_ jsonData: Data) -> MoviesResponse {
        guard let results = MoviesResults(data: jsonData) else {
            debugPrint("DECODING ERROR ")
            return .failed(error: .parseError)
        }
        return .success(movies: results.movies)
    }
}

