//
//  693. Binary Number with Alternating Bits
//  https://leetcode.com/problems/binary-number-with-alternating-bits/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import Foundation

class Solution_693 {
  func hasAlternatingBits(_ n: Int) -> Bool {
    ((n + (n >> 1) + 1) & (n + (n >> 1))) == 0
  }
}
