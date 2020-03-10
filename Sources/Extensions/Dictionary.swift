//
//  Dictionary.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 10/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import Foundation

extension Dictionary where Key == String {
    func s(_ key: String) -> String { (self[key] as? String).orEmpty }
    func i(_ key: String) -> Int { self[key] as? Int ?? 0 }
    func d(_ key: String) -> Double { self[key] as? Double ?? 0.0 }
    func f(_ key: String) -> Float { self[key] as? Float ?? 0.0 }
    func b(_ key: String) -> Bool { self[key] as? Bool ?? false }
}
