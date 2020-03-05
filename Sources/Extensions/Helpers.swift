//
//  Helpers.swift
//
//  Created by Damien BALLENGHIEN on 28/01/2020.
//

/**
/// -  Those are some usefull functions to simplify operations
**/

// MARK: - Debug Helpers

extension NSObject {

    var description: String { .init(describing: self) }
}

// UI Helpers

import UIKit

final class Storyboards {

    typealias StoryboardName = String

    /// Singleton
    private init() { }
    static let shared = Storyboards()

    /// Variables
    var files: [StoryboardName] = ["Main"]
}

extension UIStoryboard {

    convenience init(storyboard: Storyboards.StoryboardName) {
        guard Storyboards.shared.files.contains(storyboard) else {
            fatalError("Can't instantiate 📲 " + storyboard + "\nMake sure that Storyboards.shared.files contains it.")
        }
        self.init(name: storyboard, bundle: nil)
    }

    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = instantiateViewController(withIdentifier: String(describing: T.self)) as? T else {
            fatalError("Can't instantiate view controller \(String(describing: T.self))")
        }
        return viewController
    }
}
