//
//  830. Positions of Large Groups
//  https://leetcode.com/problems/positions-of-large-groups/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import Foundation

class Solution_830 {
  func largeGroupPositions(_ s: String) -> [[Int]] {
    var res = [[Int]]()
    var chars = Array(s), start = 0, last = chars[0]
    chars.append(" ")

    for i in 1 ..< chars.count {
      if chars[i] != last {
        if i - start >= 3 {
          res.append([start, i - 1])
        }
        last = chars[i]
        start = i
      }
    }

    return res
  }
}
