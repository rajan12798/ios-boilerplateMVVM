//
//  StringHelper.swift
//  Collabdiary
//
//  Created by rajan kumar on 29/10/24.
//

import Foundation

struct StringHelper {
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    static func isNumeric(_ string: String) -> Bool {
        return Double(string) != nil
    }
    
    static func capitalizeFirstLetter(_ string: String) -> String {
        return string.prefix(1).capitalized + string.dropFirst()
    }
    
    static func removeWhitespace(_ string: String) -> String {
        return string.replacingOccurrences(of: " ", with: "")
    }
}
