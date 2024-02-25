//
//  1221. Split a String in Balanced Strings
//  https://leetcode.com/problems/split-a-string-in-balanced-strings/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import Foundation

class Solution_1221 {
  func balancedStringSplit(_ s: String) -> Int {
    var res = 0, count = 0
    for char in s {
      char == "L" ? (count += 1) : (count -= 1)
      if count == 0 { res += 1 }
    }
    return res
  }
}
