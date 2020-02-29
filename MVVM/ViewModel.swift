//
//  ViewModel.swift
//  MVVM
//
//  Created by Lucky on 29/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "Jack", secondName: "Smith", age: 55)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
}
