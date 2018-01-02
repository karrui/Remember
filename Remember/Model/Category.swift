//
//  Category.swift
//  Remember
//
//  Created by Karrui Lau on 3/1/18.
//  Copyright © 2018 Karrui Lau. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
