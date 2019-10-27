import XCTest
@testable import Collatz
class CollatzTests: XCTestCase {
    
    func testWhileLoop() {
        
        var count = 0
        var number = 1
        
        while count <= 100 {
            number = number + 1
            if isPrime(number: number) == true {
                print(number)
                count = count + 1
                
            }
        }
    }
    
    
    func isPrime(number: Int) -> Bool {
        if number > 2 {
            for i in 2...number - 1 {
                if number % i == 0 {
                    return false
                }
            }
        } else if number == 1 {
            return false
        }
        
        return true
    }

    func testIsPrime() {
        XCTAssertTrue(isPrime(number: 59))
        XCTAssertFalse(isPrime(number: 8))
        XCTAssertTrue(isPrime(number: 3))
        XCTAssertFalse(isPrime(number: 75))
        XCTAssertTrue(isPrime(number: 2))
        XCTAssertFalse(isPrime(number: 1))
//        XCTAssertTrue(isPrime(number: 30303030303031))
    }
}
