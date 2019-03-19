import XCTest

let playgroundObserver = PlaygroundTestObserver()
XCTestObservationCenter.shared.addTestObserver(playgroundObserver)

let sud = [FibonacciTest.self]
TestRunner.run(tests: sud)
