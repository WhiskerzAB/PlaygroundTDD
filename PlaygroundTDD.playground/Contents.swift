import XCTest

let playgroundObserver = PlaygroundTestObserver()
XCTestObservationCenter.shared().addTestObserver(playgroundObserver)

let stuffToTest = [CatTest.self]

TestRunner.run(tests: stuffToTest)
