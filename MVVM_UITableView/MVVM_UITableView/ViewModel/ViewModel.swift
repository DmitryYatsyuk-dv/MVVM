//
//  ViewModel.swift
//  MVVM_UITableView
//
//  Created by Lucky on 29/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import Foundation


class ViewModel: TableViewViewModelType {
  
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "Johny", secondName: "Cash", age: 33),
        Profile(name: "Max", secondName: "Mad", age: 21),
        Profile(name: "Mark", secondName: "Tven", age: 55)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
        
      }
      
      func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
      }
    
}

