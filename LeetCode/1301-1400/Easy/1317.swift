//
//  1317. Convert Integer to the Sum of Two No-Zero Integers
//  https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import Foundation

class Solution_1317 {
  func getNoZeroIntegers(_ n: Int) -> [Int] {
    for i in 1 ..< n {
      if !hasZero(i), !hasZero(n - i) {
        return [i, n - i]
      }
    }
    return [-1, -1]
  }

  private func hasZero(_ n: Int) -> Bool {
    var n = n
    while n > 0 {
      if n % 10 == 0 { return true }
      n /= 10
    }
    return false
  }
}
