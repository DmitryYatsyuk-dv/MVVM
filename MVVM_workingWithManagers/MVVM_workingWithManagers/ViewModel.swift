//
//  ViewModel.swift
//  MVVM_workingWithManagers
//
//  Created by Lucky on 05/03/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import Foundation

class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    func fetchMovies(completion: @escaping() -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func tittleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return ""}
        return movies[indexPath.row]
    }
}
