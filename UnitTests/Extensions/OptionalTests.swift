//
//  OptionalTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 05/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class OptionalTests: XCTestCase {

    func test_nilString_orEmpty() {
        // GIVEN
        let string: String? = nil

        // WHEN
        let functionReturn = string.orEmpty

        // THEN
        XCTAssertEqual("", functionReturn)
    }

    func test_nonNilString_orEmpty() {
        // GIVEN
        let string: String? = "Not nil"

        // WHEN
        let functionReturn = string.orEmpty

        // THEN
        XCTAssertEqual("Not nil", functionReturn)
    }
}
