//
//  342. Power of Four
//  https://leetcode.com/problems/power-of-four/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/20/23.
//

import Foundation

class Solution_342 {
  func isPowerOfFour(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    guard n & (n - 1) == 0 else {
      return false
    }
    return n & 0x55555555 == n
  }
}
