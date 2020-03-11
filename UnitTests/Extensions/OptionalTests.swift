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

    // MARK: - Any

    func test_orDefault_nilValue() {
        // GIVEN
        let sut: String? = nil

        // WHEN
        let returnValue = sut.or("Hello")

        // THEN
        XCTAssertEqual(returnValue, "Hello")
    }

    func test_orDefault_nonNilValue() {
        // GIVEN
        let sut: Int? =  1

        // WHEN
        let returnValue = sut.or(2)

        // THEN
        XCTAssertEqual(returnValue, 1)
    }

    // MARK: - Strings

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

    // MARK: - Dictionaries

    func test_nilDic_orEmpty() {
        // GIVEN
        let dic: Dictionary<AnyHashable, Any?>? = nil

        // WHEN
        let functionReturn = dic.orEmpty as! [String: String]

        // THEN
        XCTAssertEqual([:], functionReturn)
    }

    func test_nonNilDic_orEmpty() {
        // GIVEN
        let dic: Dictionary<AnyHashable, Any?>? = ["key": "value"]

        // WHEN
        let functionReturn = dic.orEmpty as! [String: String]

        // THEN
        XCTAssertEqual(["key": "value"], functionReturn)
    }
}
