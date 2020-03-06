//
//  NumberTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 06/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class NumberTests: XCTestCase {

    func test_floatValue_success() {
        // GIVEN
        let sut = 1

        // WHEN
        let floatValue = sut.floatValue

        // THEN
        XCTAssertEqual(1.0, floatValue)
    }

    func test_doubleValue_success() {
        // GIVEN
        let sut = 1

        // WHEN
        let doubleValue = sut.doubleValue

        // THEN
        XCTAssertEqual(1.0, doubleValue)
    }
}
