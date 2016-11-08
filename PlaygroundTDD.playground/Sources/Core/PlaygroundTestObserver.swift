//
//  PlaygroundTestObserver.swift
//  TDD Example
//
//  Created by Gabriel Peart 08/11/16.
//  Copyright (c) 2016 Whiskerz AB. All rights reserved.
//

import XCTest

extension PlaygroundTestObserver: XCTestObservation {
    public func testCaseWillStart(_ testCase: XCTestCase) {
        let message = "Running test suite \(testCase)"
        self.log(message: message)
    }

    public func testCase(_ testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: UInt) {
        let message = "Test failed on line \(lineNumber): \(testCase.name), \(description)"
        self.log(message: message)
    }

    public func testSuiteDidFinish(_ testSuite: XCTestSuite) {
        if let run = testSuite.testRun as? XCTestSuiteRun {
            self.log(testSuitRun: run)
        }
    }
}

public class PlaygroundTestObserver: NSObject, Loggable {
    public var verbosity: Verbosity = .quiet

    func log(testSuitRun: XCTestSuiteRun) {
        let numTests = testSuitRun.executionCount
        let testDuration = testSuitRun.testDuration
        let numFailures = testSuitRun.totalFailureCount

        let testWarning = numTests == 1 ? "test" : "tests"
        let failureWarning = numFailures == 1 ? "failure" : "failures"

        let message = "Executed \(numTests) \(testWarning) in \(testDuration)s with \(numFailures) \(failureWarning)"
        self.log(message: message)
    }

    public func log(message: String) {
        switch self.verbosity {
        case .normal:
            print(message)
        case .debug:
            print("Debug: \(message)")
        case .verbose:
            print("Verbose: \(message)")
        case .veryVerbose:
            print("Verbose: \(message.uppercased())")
        case .quiet:
            return
        }
    }
}
