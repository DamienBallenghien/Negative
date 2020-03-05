//
//  String.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 05/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

// MARK: - Strings

extension String {

    fileprivate static let emailRegexp = "(?i)^[ ]*[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]{2,11}[ ]*$"

    var isNotEmpty: Bool { !isEmpty }

    var isNumeric: Bool { allSatisfy { $0.isNumber } }
    var isNotNumeric: Bool { !isNumeric }
    var isAlpha: Bool { isNotEmpty && range(of: "[^a-zA-Z]", options: .regularExpression) == nil }
    var isEmail: Bool { NSPredicate(format: "SELF MATCHES %@", String.emailRegexp).evaluate(with: self) }

    var localized: String { NSLocalizedString(self, comment: "") }

    mutating func trimed() { self = trimmingCharacters(in: .whitespacesAndNewlines) }
    mutating func urlEncoded() { self = addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "" }

    func matchesRegex(_ regex: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: regex, options: .caseInsensitive)
            let results = regex.matches(in: self, range: NSRange(location: 0, length: count))
            return results.count != 0
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return false
        }
    }
}
