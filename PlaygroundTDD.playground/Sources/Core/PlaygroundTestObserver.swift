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
        let message = "Running test suite \(testCase)\n"
        logger.log(message: message)
    }
    
    public func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: Int) {
        let testCaseName = testCase.name
        let message = "Test failed on line \(lineNumber): \(testCaseName), \(description)\n"
        logger.log(message: message)
    }

    public func testSuiteDidFinish(_ testSuite: XCTestSuite) {
        if let run = testSuite.testRun as? XCTestSuiteRun {
            self.log(testSuitRun: run)
        }
    }
}

public class PlaygroundTestObserver: NSObject {
    let logger: Loggable = Logger(verbosity: .info)

    func log(testSuitRun: XCTestSuiteRun) {
        let numTests = testSuitRun.executionCount
        let testDuration = testSuitRun.testDuration
        let numFailures = testSuitRun.totalFailureCount

        let testWarning = numTests == 1 ? "test" : "tests"
        let failureWarning = numFailures == 1 ? "failure" : "failures"

        let message = "Executed \(numTests) \(testWarning) in \(testDuration)s with \(numFailures) \(failureWarning)"
        logger.log(message: message)
    }
}
