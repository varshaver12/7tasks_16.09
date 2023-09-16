/*
 There exist two zeroes: +0 (or just 0) and -0.

 Write a function that returns true if the input number is -0 and false otherwise (True and False for Python).
 */

import Foundation


// MARK: Solution 1
func isNegativeZero(_ n: Float) -> Bool {
    return n == 0 && n.sign == .minus
}

// MARK: Solution 2

func isNegativeZero1(_ n: Float) -> Bool {
  return String(n) == "-0.0"
}
