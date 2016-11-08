//
//  CatTest.swift
//  TDD Example
//
//  Created by Gabriel Peart 08/11/16.
//  Copyright (c) 2016 Whiskerz AB. All rights reserved.
//

import XCTest

public class CatTest: XCTestCase {
    public func testShouldBeInitializedWithAValidName() {
        let name = "Kasya"
        let cat = Cat(name: name)

        XCTAssertEqual(name, cat.name, "Cat's name should be \(name)")
    }

    public func testShouldBeInitializedWithAValidNameAndBreed() {
        let name = "Kasya"
        let breed = Breed.ragdoll
        let cat = Cat(name: name, breed: breed)

        XCTAssertEqual(name, cat.name, "Cat's name should be \(name)")
        XCTAssertEqual(breed, cat.breed, "Cat's breed should be \(breed)")
    }
}
