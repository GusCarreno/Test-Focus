//
//  Global.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//
import Foundation

struct Globals{
    static var LoginUrl = "https://reqres.in/api/login"
    static var title = "Focus Demo"
}

extension String: LocalizedError {
    public var errorDescription: String? { return self }
}
