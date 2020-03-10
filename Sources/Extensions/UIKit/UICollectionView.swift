//
//  UICollectionView.swift
//  Negative
//
//  Created by Damien BALLENGHIEN on 10/03/2020.
//  Copyright © 2020 Damien BALLENGHIEN. All rights reserved.
//

import UIKit

protocol CollectionCellIdentifiable where Self: UICollectionViewCell {
    static var cellIdentifier: String { get }
}

extension UICollectionViewCell: CollectionCellIdentifiable {
    static var cellIdentifier: String { String(describing: self) }
}

extension UICollectionView {

    func registerCellFromXib(_ type: UICollectionViewCell.Type) {
        self.register(UINib(nibName: type.cellIdentifier,
                            bundle: nil),
                      forCellWithReuseIdentifier: type.cellIdentifier)
    }

    func registerCellFromClass(_ type: UICollectionViewCell.Type) {
        self.register(type, forCellWithReuseIdentifier: type.cellIdentifier)
    }

    func dequeueReusable<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.cellIdentifier, for: indexPath) as? T else {
            fatalError("Couldn't instantiate cell with identifier \(T.self) because of wrong type")
        }
        return cell
    }
}

