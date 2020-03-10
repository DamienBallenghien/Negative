//
//  UITableView.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 10/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import UIKit

protocol TableViewCellIdentifiable where Self: UITableViewCell {
    static var cellIdentifier: String { get }
}

extension UITableViewCell: TableViewCellIdentifiable {
    static var cellIdentifier: String { String(describing: self) }
}

extension UITableView {

    func registerCellFromXib(_ type: UITableViewCell.Type) {
        self.register(UINib(nibName: type.cellIdentifier,
                            bundle: nil),
                      forCellReuseIdentifier: type.cellIdentifier)
    }

    func registerCellFromClass(_ type: UITableViewCell.Type) {
        self.register(type.self,
                      forCellReuseIdentifier: type.cellIdentifier)
    }

    func dequeueReusable<T: UITableViewCell>(for indexPath: IndexPath? = nil) -> T {
        if let indexPath = indexPath {
            return dequeueCell(for: indexPath)
        }
        return dequeueCell()
    }

    // MARK: - Private functions

    private func dequeueCell<T: UITableViewCell>() -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            fatalError("Couldn't instantiate cell with identifier \(T.self) because of wrong type")
        }
        return cell
    }

    private func dequeueCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.cellIdentifier, for: indexPath) as? T else {
            fatalError("Couldn't instantiate cell with identifier \(T.self) because of wrong type")
        }
        return cell
    }

    // https://stackoverflow.com/a/18812830/3456933
    func reloadData(completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() }, completion: { _ in
            completion()
        })
    }
}
