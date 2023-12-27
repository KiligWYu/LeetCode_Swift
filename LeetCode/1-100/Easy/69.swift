//
//  69. Sqrt(x)
//  https://leetcode.com/problems/sqrtx/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/3/23.
//

import Foundation

class Solution {
  func mySqrt(_ x: Int) -> Int {
    guard x >= 0 else { return 0 }

    var left = 0, right = x / 2 + 1
    while left <= right {
      let mid = (right - left) / 2 + left

      if mid * mid == x {
        return mid
      } else if mid * mid > x {
        right = mid - 1
      } else {
        left = mid + 1
      }
    }

    return right
  }
}
