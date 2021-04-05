//
//  DateFormatter+.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation

extension DateFormatter {

    // Date formatter as a date decoding strategy.
    static let yyyyMMdd: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
}

