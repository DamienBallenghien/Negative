//
//  DictionaryTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 10/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class DictionaryTests: XCTestCase {

    let sut = ["s": "s", "i": 1, "f": 1.0, "d": 1.0, "b": true, "fail": UIButton()] as [String : AnyObject]

    // MARK: - Strings

    func test_s_isString_success() {
        XCTAssertEqual("s", sut.s("s"))
    }

    func test_s_isNotString_emptyString() {
        XCTAssertEqual("", sut.s("fail"))
    }

    func test_s_keyDoesNotExist_emptyString() {
        XCTAssertEqual("", sut.s("unknown"))
    }

    // MARK: - Integers

    func test_i_isInt_success() {
        XCTAssertEqual(1, sut.i("i"))
    }

    func test_i_isNotInt_emptyString() {
        XCTAssertEqual(0, sut.i("fail"))
    }

    func test_i_keyDoesNotExist_emptyString() {
        XCTAssertEqual(0, sut.i("unknown"))
    }

    // MARK: - Floats

    func test_f_isFloat_success() {
        XCTAssertEqual(1.0, sut.f("f"))
    }

    func test_f_isNotFloat_emptyString() {
        XCTAssertEqual(0.0, sut.f("fail"))
    }

    func test_f_keyDoesNotExist_emptyString() {
        XCTAssertEqual(0.0, sut.f("unknown"))
    }

    // MARK: - Doubles

    func test_d_isFloat_success() {
        XCTAssertEqual(1.0, sut.d("d"))
    }

    func test_d_isNotFloat_emptyString() {
        XCTAssertEqual(0.0, sut.d("fail"))
    }

    func test_d_keyDoesNotExist_emptyString() {
        XCTAssertEqual(0.0, sut.d("unknown"))
    }

    // MARK: - Bools

    func test_b_isFloat_success() {
        XCTAssertEqual(true, sut.b("b"))
    }

    func test_b_isNotFloat_emptyString() {
        XCTAssertEqual(false, sut.b("fail"))
    }

    func test_b_keyDoesNotExist_emptyString() {
        XCTAssertEqual(false, sut.b("unknown"))
    }
}
