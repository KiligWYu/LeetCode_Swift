//
//  917. Reverse Only Letters
//  https://leetcode.com/problems/reverse-only-letters/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import Foundation

class Solution_917 {
  func reverseOnlyLetters(_ s: String) -> String {
    var chars = Array(s), n = chars.count, i = 0, j = n - 1
    while i < j {
      if !chars[i].isLetter { i += 1 }
      else if !chars[j].isLetter { j -= 1 }
      else {
        chars.swapAt(i, j)
        i += 1; j -= 1
      }
    }
    return String(chars)
  }
}
