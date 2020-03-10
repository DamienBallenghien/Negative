//
//  BundleTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 10/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class BundleTests: XCTestCase {

    var bundle = Bundle(for: BundleTests.self)

    func test_bundleShortVersionString() {
        // WHEN
        let string = bundle.bundleShortVersionString

        // THEN
        XCTAssertEqual(string, "1.0")
    }

    func test_bundleVersionString() {
        // WHEN
        let string = bundle.bundleVersionString

        // THEN
        XCTAssertEqual(string, "1")
    }

    func test_bundleDisplayNameString() {
        // WHEN
        let string = bundle.bundleDisplayNameString

        // THEN
        XCTAssertEqual(string, "NegativeTests")
    }

    func test_noBundle() {
        // GIVEN
        bundle = Bundle()

        // WHEN
        let bundleDisplayNameString = bundle.bundleDisplayNameString
        let bundleVersionString = bundle.bundleVersionString
        let bundleShortVersionString = bundle.bundleShortVersionString

        // THEN
        XCTAssertEqual(bundleDisplayNameString, "")
        XCTAssertEqual(bundleVersionString, "")
        XCTAssertEqual(bundleShortVersionString, "")
    }
}
