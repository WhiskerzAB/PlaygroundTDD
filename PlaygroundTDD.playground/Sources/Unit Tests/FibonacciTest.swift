import XCTest

// Fibonacci series
// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
public class FibonacciTest: XCTestCase {
    let fibonacci = Fibonacci()
    
    public func testFirstNumerOfSeries() {
        let result = fibonacci.calculate(0)
        XCTAssertEqual(result, 0)
    }
    
    public func testSecondNumerOfSeries() {
        let result = fibonacci.calculate(1)
        XCTAssertEqual(result, 1)
    }
    
    public func testThirdNumerOfSeries() {
        let result = fibonacci.calculate(2)
        XCTAssertEqual(result, 1)
    }
    
    public func testFourthNumerOfSeries() {
        let result = fibonacci.calculate(4)
        XCTAssertEqual(result, 3)
    }
    
    public func testFifthNumerOfSeries() {
        let result = fibonacci.calculate(5)
        XCTAssertEqual(result, 5)
    }
    
    public func testSixthNumerOfSeries() {
        let result = fibonacci.calculate(6)
        XCTAssertEqual(result, 8)
    }
    
    public func testSeventhNumerOfSeries() {
        let result = fibonacci.calculate(7)
        XCTAssertEqual(result, 13)
    }
    
    public func testEighthNumerOfSeries() {
        let result = fibonacci.calculate(8)
        XCTAssertEqual(result, 21)
    }
    
    public func testNinthNumerOfSeries() {
        let result = fibonacci.calculate(9)
        XCTAssertEqual(result, 34)
    }
    
    public func testTenthNumerOfSeries() {
        let result = fibonacci.calculate(10)
        XCTAssertEqual(result, 55)
    }
    
    public func testEleventhNumerOfSeries() {
        let result = fibonacci.calculate(11)
        XCTAssertEqual(result, 89)
    }
    
    public func testTwelfthNumerOfSeries() {
        let result = fibonacci.calculate(12)
        XCTAssertEqual(result, 144)
    }
}
