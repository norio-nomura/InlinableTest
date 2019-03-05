import XCTest
import InlinableTest

final class InlinableTestTests: XCTestCase {
    let ranges = (0..<100000).map { NSRange(location: $0, length: $0) }
    
    func testInlined() {
        let myStruct = MyStruct.init(ranges: ranges)
        measure {
            _ = myStruct.inlinedRanges("")
        }
    }

    func testNotInlined() {
        let myStruct = MyStruct.init(ranges: ranges)
        measure {
            _ = myStruct.ranges("")
        }
    }
}
