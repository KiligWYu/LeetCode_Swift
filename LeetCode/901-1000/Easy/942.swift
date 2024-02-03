//
//  942. DI String Match
//  https://leetcode.com/problems/di-string-match/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/3/24.
//

import Foundation

class Solution_942 {
  func diStringMatch(_ s: String) -> [Int] {
    var res = [Int](), min = 0, max = s.count
    for char in Array(s) {
      if char == "I" { res.append(min); min += 1 }
      else { res.append(max); max -= 1 }
    }
    res.append(max)
    return res
  }
}
