//
//  1047. Remove All Adjacent Duplicates In String
//  https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import Foundation

class Solution_1047 {
  func removeDuplicates(_ s: String) -> String {
    var res = ""

    for c in s {
      if let last = res.last, last == c {
        res.removeLast()
      } else {
        res += String(c)
      }
    }

    return res
  }
}
