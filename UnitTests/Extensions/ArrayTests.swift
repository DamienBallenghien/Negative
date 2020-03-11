//
//  HelpersTests.swift
//  NegativeTests
//
//  Created by Damien BALLENGHIEN on 29/01/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import XCTest
@testable import Negative

final class ArrayTests: XCTestCase {

    func test_arrayIsNotEmpty_returnIsTrue() {
        // GIVEN
        let array = [0]

        // WHEN
        let functionReturn = array.isNotEmpty

        // THEN
        XCTAssertTrue(functionReturn)
    }

    func test_arrayIsNotEmpty_returnIsFalse() {
        // GIVEN
        let array = [Int]()

        // WHEN
        let functionReturn = array.isNotEmpty

        // THEN
        XCTAssertFalse(functionReturn)
    }

    func test_elementIsInArray_success() {
        // GIVEN
        let array = [0]

        // WHEN
        let functionReturn = array.element(correspondingTo: 0)

        // THEN
        XCTAssertEqual(0, functionReturn)
    }

    func test_elementIsInArray_failure() {
        // GIVEN
        let array = [1]

        // WHEN
        let functionReturn = array.element(correspondingTo: 0)

        // THEN
        XCTAssertNil(functionReturn)
    }

    func test_elementsAreInArray_success() {
        // GIVEN
        let array = [0, 1, 2, 3, 4]

        // WHEN
        let functionReturn = array.elements(correspondingTo: 0)

        // THEN
        XCTAssertEqual([0], functionReturn)
    }

    func test_elementsAreInArrayMultipleValues_success() {
        // GIVEN
        let array = [0, 1, 2, 3, 4, 0]

        // WHEN
        let functionReturn = array.elements(correspondingTo: 0)

        // THEN
        XCTAssertEqual([0, 0], functionReturn)
    }

    func test_elementsAreInArray_failure() {
        // GIVEN
        let array = [1]

        // WHEN
        let functionReturn = array.elements(correspondingTo: 0)

        // THEN
        XCTAssertEqual([], functionReturn)
    }

    func test_move_success() {
        // GIVEN
        var array = [1, 2, 3]

        // WHEN
        array.move(elementAt: 0, to: 2)

        // THEN
        XCTAssertEqual([2, 3, 1], array)
    }

    func test_moveElement_success() {
        // GIVEN
        var array = [1, 2, 3]

        // WHEN
        array.move(1, at: 2)

        // THEN
        XCTAssertEqual([2, 3, 1], array)
    }

    func test_excluding_success() {
        // GIVEN
        var array = [1, 2, 3]

        // WHEN
        array.excluding(2)

        // THEN
        XCTAssertEqual([1, 3], array)
    }

    func test_excludingMultipleValues_success() {
        // GIVEN
        var array = [1, 2, 3]

        // WHEN
        array.excluding([1, 2, 3])

        // THEN
        XCTAssertEqual([], array)
    }

    func test_doesNotContain_returnTrue() {
        // GIVEN
        let array = [1, 2, 3]

        // WHEN
        let boolValue = array.doesNotContain(4)

        // THEN
        XCTAssertTrue(boolValue)
    }

    func test_doesNotContain_returnFalse() {
        // GIVEN
        let array = [1, 2, 3]

        // WHEN
        let boolValue = array.doesNotContain(2)

        // THEN
        XCTAssertFalse(boolValue)
    }
}
