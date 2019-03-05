import XCTest
import InlinableTest

final class InlinableTestTests: XCTestCase {
    let counts = 100000
    lazy var ranges = (0..<counts).map { NSRange(location: $0, length: $0) }
    
    func testInlined() {
        let myStruct = MyStruct.init(ranges: ranges)
        measure {
            let myRanges = myStruct.inlinedRanges("")
            XCTAssertEqual(myRanges.count, counts)
        }
    }

    func testNotInlined() {
        let myStruct = MyStruct.init(ranges: ranges)
        measure {
            let myRanges = myStruct.ranges("")
            XCTAssertEqual(myRanges.count, counts)
        }
    }
}
