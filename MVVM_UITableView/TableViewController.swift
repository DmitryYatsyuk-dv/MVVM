//
//  TableViewController.swift
//  MVVM_UITableView
//
//  Created by Lucky on 29/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        profiles = [
            Profile(name: "John", secondName: "Smith", age: 33),
            Profile(name: "Nicolas", secondName: "Page", age: 65),
            Profile(name: "Cobby", secondName: "Salmon", age: 55)]
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell else { return TableViewCell() }
        
        let profile = profiles[indexPath.row]
        
        tableViewCell.ageLabel.text = "\(profile.age)"
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName )"
        
        return tableViewCell
    }
}
