//
//  Dependencies.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

final class Dependencies {

    static let shared = Dependencies()

    var api: TheMovieDBApi

    init() {
        let apiManager = APIManager(session: URLSession(configuration: .default))
        self.api = TheMovieDBApi(manager: apiManager)
    }
}

