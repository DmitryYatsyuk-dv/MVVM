//
//  TableViewModelType.swift
//  MVVM_UITableView
//
//  Created by Lucky on 29/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?

    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)

}
