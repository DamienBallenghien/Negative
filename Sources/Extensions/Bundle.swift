//
//  Bundle.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 10/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

extension Bundle {

    fileprivate func string(forKey key: String) -> String { (infoDictionary ?? [:]).s(key) }

    var bundleShortVersionString: String { string(forKey: "CFBundleShortVersionString") }
    var bundleVersionString: String { string(forKey: "CFBundleVersion") }
    var bundleDisplayNameString: String { string(forKey: "CFBundleDisplayName") }
}
