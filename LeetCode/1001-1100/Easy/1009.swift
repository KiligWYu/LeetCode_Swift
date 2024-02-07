//
//  1009. Complement of Base 10 Integer
//  https://leetcode.com/problems/complement-of-base-10-integer/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import Foundation

class Solution_1009 {
  func bitwiseComplement(_ n: Int) -> Int {
    var s = 1
    while s < n {
      s = (s << 1) | 1
    }
    return s - n
  }
}
