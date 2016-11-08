//
//  TestRunner.swift
//  TDD Example
//
//  Created by Gabriel Peart 08/11/16.
//  Copyright (c) 2016 Whiskerz AB. All rights reserved.
//

import XCTest

public typealias TestCase = AnyClass

public struct TestRunner {
    public static func run(tests: [TestCase]) {
        for test in tests {
            self.run(test: test)
        }
    }

    public static func run(test: TestCase) {
        if let testCase = test as? XCTestCase.Type {
            self.run(testCase: testCase)
        }
    }

    public static func run(testCase: XCTestCase.Type) {
        let testSuite = testCase.defaultTestSuite()
        testSuite.run()
    }
}
