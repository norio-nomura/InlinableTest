# InlinableTest

Example in which `@inlinable` generates slower code.

```terminal.sh-session
$ swift test -c release
Test Suite 'All tests' started at 2019-03-05 12:17:20.918
Test Suite 'InlinableTestPackageTests.xctest' started at 2019-03-05 12:17:20.918
Test Suite 'InlinableTestTests' started at 2019-03-05 12:17:20.918
Test Case '-[InlinableTestTests.InlinableTestTests testInlined]' started.
<unknown>:0: Test Case '-[InlinableTestTests.InlinableTestTests testInlined]' measured [Time, seconds] average: 0.073, relative standard deviation: 7.361%, values: [0.064601, 0.068172, 0.071555, 0.071646, 0.074710, 0.073710, 0.070708, 0.074819, 0.073883, 0.086354], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
Test Case '-[InlinableTestTests.InlinableTestTests testInlined]' passed (1.217 seconds).
Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined]' started.
<unknown>:0: Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined]' measured [Time, seconds] average: 0.000, relative standard deviation: 11.087%, values: [0.000602, 0.000447, 0.000447, 0.000446, 0.000421, 0.000432, 0.000431, 0.000461, 0.000452, 0.000418], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined]' passed (0.257 seconds).
Test Suite 'InlinableTestTests' passed at 2019-03-05 12:17:22.393.
	 Executed 2 tests, with 0 failures (0 unexpected) in 1.475 (1.475) seconds
Test Suite 'InlinableTestPackageTests.xctest' passed at 2019-03-05 12:17:22.393.
	 Executed 2 tests, with 0 failures (0 unexpected) in 1.475 (1.475) seconds
Test Suite 'All tests' passed at 2019-03-05 12:17:22.393.
	 Executed 2 tests, with 0 failures (0 unexpected) in 1.475 (1.476) seconds
```