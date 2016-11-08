//
//  Cat.swift
//  TDD Example
//
//  Created by Gabriel Peart 08/11/16.
//  Copyright (c) 2016 Whiskerz AB. All rights reserved.
//

public struct Cat {
    var name: String
    var breed: Breed?

    init(name: String) {
        self.name = name
    }

    init(name: String, breed: Breed) {
        self.name = name
        self.breed = breed
    }
}
