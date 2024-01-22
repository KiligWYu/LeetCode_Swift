//
//  762. Prime Number of Set Bits in Binary Representation
//  https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/22/24.
//

import Foundation

class Solution_762 {
  // 1 <= left <= right <= 1e6
  // Up to 19 set bit, so as long as judge the prime number within 20, as long as it cannot be divided by 2 and 3
  func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
    var res = 0
    for num in left ... right {
      var cnt = 0, num = num
      while num > 0 {
        cnt += num & 1
        num >>= 1
      }
      res += cnt < 4 ? cnt > 1 ? 1 : 0 : (cnt % 2 != 0 && cnt % 3 != 0) ? 1 : 0
    }
    return res
  }
}
