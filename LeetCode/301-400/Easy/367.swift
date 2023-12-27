//
//  367. Valid Perfect Square
//  https://leetcode.com/problems/valid-perfect-square/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/22/23.
//

import Foundation

class Solution_367 {
  func isPerfectSquare(_ num: Int) -> Bool {
    var left = 0, right = num

    while left <= right {
      let mid = left + (right - left) / 2, square = mid * mid
      if num == square { return true }
      if num > square {
        left = mid + 1
      } else {
        right = mid - 1
      }
    }

    return false
  }

  /*
   // 1 + 3 + ... + (2n - 1) = (2n - 1 + 1)n / 2 = n * n
   func isPerfectSquare(_ num: Int) -> Bool {
     var num = num, i = 1

     while num > 0 {
       num -= i
       i += 2
     }

     return num == 0
   }
    */
}
