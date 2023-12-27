//
//  191. Number of 1 Bits
//  https://leetcode.com/problems/number-of-1-bits/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/27/23.
//

import Foundation

class Solution_191 {
//  func hammingWeight(_ n: Int) -> Int {
//    var res = 0, n = n
//    while n != 0 {
//      res += n & 1
//      n >>= 1
//    }
//    return res
//  }

  func hammingWeight(_ n: Int) -> Int {
    var res = 0, n = n
    while n != 0 {
      n &= (n - 1)
      res += 1
    }
    return res
  }
}
