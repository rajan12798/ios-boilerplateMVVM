//
//  DateFormatterHelper.swift
//  Collabdiary
//
//  Created by rajan kumar on 29/10/24.
//

import Foundation

struct DateFormatterHelper {
    static let shared = DateFormatterHelper()
    
    private let dateFormatter: DateFormatter

    private init() {
        dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = TimeZone.current
    }

    func formatDate(_ date: Date, format: String) -> String {
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: date)
    }
    
    func dateFromString(_ dateString: String, format: String) -> Date? {
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: dateString)
    }
    
    // Example pre-defined formats
    var isoDateFormat: String {
        return formatDate(Date(), format: "yyyy-MM-dd'T'HH:mm:ssZ")
    }
}
