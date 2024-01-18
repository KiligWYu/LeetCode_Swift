//
//  696. Count Binary Substrings
//  https://leetcode.com/problems/count-binary-substrings/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import Foundation

class Solution_696 {
  func countBinarySubstrings(_ s: String) -> Int {
    var res = 0, pre = 0, cur = 1, preChar = s[s.startIndex]

    for char in s[s.index(s.startIndex, offsetBy: 1)..<s.endIndex] {
      if preChar == char {
        cur += 1
      } else {
        pre = cur
        cur = 1
      }
      if pre >= cur {
        res += 1
      }
      preChar = char
    }

    return res
  }
}
