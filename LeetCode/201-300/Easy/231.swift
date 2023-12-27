//
//  231. Power of Two
//  https://leetcode.com/problems/power-of-two/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/8/23.
//

import Foundation

class Solution_231 {
  func isPowerOfTwo(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    return (n & (n - 1)) == 0
  }

  // 更多解法: https://leetcode.wang/leetcode-231-Power-of-Two.html
}
