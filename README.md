# InlinableTest

Example in which `@inlinable` generates slower code.

```terminal.sh-session
$ swift test -c release
Test Suite 'All tests' started at 2019-03-05 20:58:53.196
Test Suite 'InlinableTestPackageTests.xctest' started at 2019-03-05 20:58:53.196
Test Suite 'InlinableTestTests' started at 2019-03-05 20:58:53.196
Test Case '-[InlinableTestTests.InlinableTestTests testInlined]' started.
<unknown>:0: Test Case '-[InlinableTestTests.InlinableTestTests testInlined]' measured [Time, seconds] average: 0.058, relative standard deviation: 2.890%, values: [0.062725, 0.059265, 0.057413, 0.057819, 0.056485, 0.057397, 0.059275, 0.058865, 0.057503, 0.057277], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
Test Case '-[InlinableTestTests.InlinableTestTests testInlined]' passed (1.070 seconds).
Test Case '-[InlinableTestTests.InlinableTestTests testInlined2]' started.
<unknown>:0: Test Case '-[InlinableTestTests.InlinableTestTests testInlined2]' measured [Time, seconds] average: 0.003, relative standard deviation: 22.832%, values: [0.005497, 0.003407, 0.003297, 0.003306, 0.003420, 0.002858, 0.002862, 0.002855, 0.002857, 0.002918], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
Test Case '-[InlinableTestTests.InlinableTestTests testInlined2]' passed (0.285 seconds).
Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined]' started.
<unknown>:0: Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined]' measured [Time, seconds] average: 0.001, relative standard deviation: 72.958%, values: [0.002241, 0.000727, 0.000720, 0.000546, 0.000478, 0.000480, 0.000481, 0.000480, 0.000479, 0.000478], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined]' passed (0.264 seconds).
Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined2]' started.
<unknown>:0: Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined2]' measured [Time, seconds] average: 0.001, relative standard deviation: 79.707%, values: [0.002066, 0.000675, 0.000429, 0.000427, 0.000422, 0.000425, 0.000426, 0.000423, 0.000423, 0.000426], performanceMetricID:com.apple.XCTPerformanceMetric_WallClockTime, baselineName: "", baselineAverage: , maxPercentRegression: 10.000%, maxPercentRelativeStandardDeviation: 10.000%, maxRegression: 0.100, maxStandardDeviation: 0.100
Test Case '-[InlinableTestTests.InlinableTestTests testNotInlined2]' passed (0.258 seconds).
Test Suite 'InlinableTestTests' passed at 2019-03-05 20:58:55.073.
	 Executed 4 tests, with 0 failures (0 unexpected) in 1.877 (1.877) seconds
Test Suite 'InlinableTestPackageTests.xctest' passed at 2019-03-05 20:58:55.073.
	 Executed 4 tests, with 0 failures (0 unexpected) in 1.877 (1.877) seconds
Test Suite 'All tests' passed at 2019-03-05 20:58:55.073.
```