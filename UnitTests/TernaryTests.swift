//
//  TernaryTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 11/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class TernaryTests: XCTestCase {

    func test_ternary_yes() {
        // GIVEN
        let bool = true

        // WHEN
        let value = check(bool, ifTrue: "yes", else: "not")

        // THEN
        XCTAssertEqual(value, "yes")
    }


    func test_ternary_not() {
        // GIVEN
        let bool = false

        // WHEN
        let value = check(bool, ifTrue: "yes", else: "not")

        // THEN
        XCTAssertEqual(value, "not")
    }
}
