//
//  extension.swift
//  CollectionView_Assignment_W4
//
//  Created by SC414 on 8/31/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView{
    func register(id : String) {
        register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
    }
}
