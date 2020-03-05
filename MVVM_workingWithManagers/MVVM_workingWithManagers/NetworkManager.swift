//
//  NetworkManager.swift
//  MVVM_workingWithManagers
//
//  Created by Lucky on 05/03/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
