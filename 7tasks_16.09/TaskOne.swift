/*
 Given a 2D ( nested ) list ( array, vector, .. ) of size m * n, your task is to find the sum of the minimum values in each row.
 */

import Foundation


// MARK: Solution 1
func sumOfMinimums(_ numbers: [[Int]]) -> Int {
    var resultSumMinValue = 0
    numbers.forEach { internalArray in
        resultSumMinValue += internalArray.min()!
    }
    return resultSumMinValue
}

// MARK: Solution 2

func sumOfMinimums1(_ numbers: [[Int]]) -> Int {
    return numbers.compactMap { $0.min() }.reduce(0, +)
}
