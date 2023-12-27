//
//  58. Length of Last Word
//  https://leetcode.com/problems/length-of-last-word/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/1/23.
//

import Foundation

class Solution {
  func lengthOfLastWord(_ s: String) -> Int {
    let chars = Array(s)
    var res = 0

    for i in (0 ... chars.count - 1).reversed() {
      if res == 0 {
        if chars[i] == " " {
          continue
        } else {
          res += 1
        }
      } else {
        if chars[i] == " " {
          return res
        } else {
          res += 1
        }
      }
    }

    return res
  }
}
