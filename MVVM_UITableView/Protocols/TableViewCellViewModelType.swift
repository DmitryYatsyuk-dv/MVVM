//
//  TableViewCellViewModelType.swift
//  MVVM_UITableView
//
//  Created by Lucky on 29/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
