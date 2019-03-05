import Foundation

// MARK: - public

public struct MyStruct {
    @usableFromInline
    let rangeManager: RangeManager

    public init(ranges: [NSRange]) {
        rangeManager = RangeManager.init(ranges: ranges)
    }

    @inlinable
    /// slower than `ranges(_:)`
    public func inlinedRanges<S>(_: S) -> [NSRange] {
        let count = rangeManager.numberOfRanges()
        return rangeManager.ranges(for: 0..<count)
    }

    /// faster than `inlinedRanges(_:)`
    public func ranges<S>(_: S) -> [NSRange] {
        let count = rangeManager.numberOfRanges()
        return rangeManager.ranges(for: 0..<count)
    }
}

// MARK: - internal

@usableFromInline
struct RangeManager {
    let _ranges: [NSRange]

    init(ranges: [NSRange]) {
        _ranges = ranges
    }

    @usableFromInline
    func numberOfRanges() -> Int {
        return _ranges.count
    }

    @usableFromInline
    func range(at index: Int) -> NSRange {
        return _ranges[index]
    }

    @usableFromInline
    func ranges<C>(for indices: C) -> [NSRange] where C: Collection, C.Element == Int {
        return indices.map { range(at: $0) }
    }
}
