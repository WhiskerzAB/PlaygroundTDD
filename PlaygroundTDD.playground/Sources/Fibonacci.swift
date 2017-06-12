import Foundation

public struct Fibonacci {
    public func calculate(_ n: Int) -> Int {
        guard n != 0, n != 1 else { return n }
        return self.calculate(n - 1) + self.calculate(n - 2)
    }
}
