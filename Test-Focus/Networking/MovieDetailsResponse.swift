//
//  MovieDetailsResponse.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

/// Movie Details response handler (JSON parsing).
enum MovieDetailsResponse {
    case success(movie: Movie)
    case failed(error: ApiErrorType)

    /// Parses data from API response.
    ///
    /// - Parameter jsonData: JSON as Data
    /// - Returns: MovieDetailsResponse
    static func parse(_ jsonData: Data) -> MovieDetailsResponse {
        guard let movie = Movie(data: jsonData) else {
            debugPrint("DECODING ERROR: Movie")
            return .failed(error: .parseError)
        }
        return .success(movie: movie)
    }
}
