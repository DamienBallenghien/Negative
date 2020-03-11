//
//  Array.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 05/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

// MARK: - Arrays

extension Array {

    var isNotEmpty: Bool { !isEmpty }

    mutating func move(elementAt from: Int, to: Int) { insert(remove(at: from), at: to) }
}

extension Array where Element: Equatable {

    /// Transforms the initial array by excluding the given element
    /// - Parameter element: Element
    /// - Return *true* if the element was contained, *false* if not
    @discardableResult
    mutating func excluding(_ element: Element) -> Bool {
        let newArray = self.filter { $0 != element }
        let operationWorked = newArray != self
        self = newArray
        return operationWorked
    }

    mutating func excluding(_ elements: [Element]) { elements.forEach { excluding($0) } }

    func doesNotContain(_ element: Element) -> Bool { !contains(element) }

    func element(correspondingTo value: Element) -> Element? { first { $0 == value } }
    func elements(correspondingTo value: Element) -> [Element] { filter { $0 == value } }
}
