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
        // GIVEN
        let string = ""

        // WHEN
        let isNotEmpty = string.isNotEmpty

        // THEN
        XCTAssertFalse(isNotEmpty)
    }

    func test_nonEmptyString_isNotEmpty_returnTrue() {
        // GIVEN
        let string = "Not empty"

        // WHEN
        let isNotEmpty = string.isNotEmpty

        // THEN
        XCTAssertTrue(isNotEmpty)
    }

    func test_numericString_isNumeric_returnTrue() {
        // GIVEN
        let string = "123"

        // WHEN
        let isNumeric = string.isNumeric

        // THEN
        XCTAssertTrue(isNumeric)
    }

    func test_nonNumericString_isNumeric_returnFalse() {
        // GIVEN
        let string = "123a"

        // WHEN
        let isNumeric = string.isNumeric

        // THEN
        XCTAssertFalse(isNumeric)
    }

    func test_numericString_isNotNumeric_returnTrue() {
        // GIVEN
        let string = "123&"

        // WHEN
        let isNumeric = string.isNotNumeric

        // THEN
        XCTAssertTrue(isNumeric)
    }

    func test_nonNumericString_isNotNumeric_returnFalse() {
        // GIVEN
        let string = "123"

        // WHEN
        let isNumeric = string.isNotNumeric

        // THEN
        XCTAssertFalse(isNumeric)
    }

    func test_alphaString_isAlpha_returnTrue() {
        // GIVEN
        let string = "abc"

        // WHEN
        let isAlpha = string.isAlpha

        // THEN
        XCTAssertTrue(isAlpha)
    }

    func test_nonAlphaString_isAlpha_returnFalse() {
        // GIVEN
        let string = "a123"

        // WHEN
        let isAlpha = string.isAlpha

        // THEN
        XCTAssertFalse(isAlpha)
    }

    func test_emailString_isEmail_returnTrue() {
        // GIVEN
        let string = "test@test.test"

        // WHEN
        let isEmail = string.isEmail

        // THEN
        XCTAssertTrue(isEmail)
    }

    func test_nonEmailString_isEmail_returnFalse() {
        // GIVEN
        let string = "test@test."

        // WHEN
        let isEmail = string.isEmail

        // THEN
        XCTAssertFalse(isEmail)
    }

    func test_trim_success_1() {
        // GIVEN
        var string = "\n  test \n   "

        // WHEN
        string.trimed()

        // THEN
        XCTAssertEqual(string, "test")
    }

    func test_trim_success_2() {
        // GIVEN
        var string = "\n  test test  "

        // WHEN
        string.trimed()

        // THEN
        XCTAssertEqual(string, "test test")
    }

    func test_matchesRegex_success() {
        // GIVEN
        let string = "abc"

        // WHEN
        let boolValue = string.matchesRegex("[^a-zA-Z]")

        // THEN
        XCTAssertTrue(boolValue)
    }

    func test_matchesRegex_failure() {
        // GIVEN
        let string = "abc1"

        // WHEN
        let boolValue = string.matchesRegex("[^a-zA-Z]")

        // THEN
        XCTAssertFalse(boolValue)
    }

    func test_matchesRegex_invalidRegex_failure() {
        // GIVEN
        let string = "abc1"

        // WHEN
        let boolValue = string.matchesRegex("[")

        // THEN
        XCTAssertFalse(boolValue)
    }

    func test_urlEncoded_success() {
        // GIVEN
        var string = "https://www.coucou.com?écologie=true"

        // WHEN
        string.urlEncoded()

        // THEN
        XCTAssertEqual("https%3A%2F%2Fwww.coucou.com%3F%C3%A9cologie=true", string)
    }

    func test_urlEncoded_failure() {
        // GIVEN
        var string = String(bytes: [0xD8, 0x00] as [UInt8], encoding: String.Encoding.utf16BigEndian)!

        // WHEN
        string.urlEncoded()

        // THEN
        XCTAssertEqual("", string)
    }

    func test_localized_keyExists_returnLocalizedString() {
        // GIVEN
        let bundle = Bundle(for: StringTests.self)
        var string = "valid_key"

        // WHEN
        string.localized(bundle: bundle)

        // THEN
        XCTAssertEqual("localizedString", string)
    }

    func test_localized_keyDoesNotExist_returnKey() {
        // GIVEN
        let bundle = Bundle(for: StringTests.self)
        var string = "invalid_key"

        // WHEN
        string.localized(bundle: bundle)

        // THEN
        XCTAssertEqual("invalid_key", string)
    }
}
