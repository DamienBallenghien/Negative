//
//  StringTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 05/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class StringTests: XCTestCase {

    func test_emptyString_isNotEmpty_returnFalse() {
        // GIVEn
        let string = ""

        // WHEN
        let isNotEmpty = string.isNotEmpty

        // THEN
        XCTAssertFalse(isNotEmpty)
    }

    func test_nonEmptyString_isNotEmpty_returnTrue() {
        // GIVEn
        let string = "Not empty"

        // WHEN
        let isNotEmpty = string.isNotEmpty

        // THEN
        XCTAssertTrue(isNotEmpty)
    }

    func test_numericString_isNumeric_returnTrue() {
        // GIVEn
        let string = "123"

        // WHEN
        let isNumeric = string.isNumeric

        // THEN
        XCTAssertTrue(isNumeric)
    }

    func test_nonNumericString_isNumeric_returnFalse() {
        // GIVEn
        let string = "123a"

        // WHEN
        let isNumeric = string.isNumeric

        // THEN
        XCTAssertFalse(isNumeric)
    }

    func test_numericString_isNotNumeric_returnTrue() {
        // GIVEn
        let string = "123&"

        // WHEN
        let isNumeric = string.isNotNumeric

        // THEN
        XCTAssertTrue(isNumeric)
    }

    func test_nonNumericString_isNotNumeric_returnFalse() {
        // GIVEn
        let string = "123"

        // WHEN
        let isNumeric = string.isNotNumeric

        // THEN
        XCTAssertFalse(isNumeric)
    }

    func test_alphaString_isAlpha_returnTrue() {
        // GIVEn
        let string = "abc"

        // WHEN
        let isAlpha = string.isAlpha

        // THEN
        XCTAssertTrue(isAlpha)
    }

    func test_nonAlphaString_isAlpha_returnFalse() {
        // GIVEn
        let string = "a123"

        // WHEN
        let isAlpha = string.isAlpha

        // THEN
        XCTAssertFalse(isAlpha)
    }

    func test_emailString_isEmail_returnTrue() {
        // GIVEn
        let string = "test@test.test"

        // WHEN
        let isEmail = string.isEmail

        // THEN
        XCTAssertTrue(isEmail)
    }

    func test_nonEmailString_isEmail_returnFalse() {
        // GIVEn
        let string = "test@test."

        // WHEN
        let isEmail = string.isEmail

        // THEN
        XCTAssertFalse(isEmail)
    }

    func test_trim_success_1() {
        // GIVEn
        var string = "\n  test \n   "

        // WHEN
        string.trimed()

        // THEN
        XCTAssertEqual(string, "test")
    }

    func test_trim_success_2() {
        // GIVEn
        var string = "\n  test test  "

        // WHEN
        string.trimed()

        // THEN
        XCTAssertEqual(string, "test test")
    }
}
