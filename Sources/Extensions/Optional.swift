//
//  Optionals.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 05/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

// MARK: - Optionals

extension Optional where Wrapped == String {

    var orEmpty: String {
        switch self {
        case .some(let value): return value
        case .none: return ""
        }
    }
}
