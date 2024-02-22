//
//  1128. Number of Equivalent Domino Pairs
//  https://leetcode.com/problems/number-of-equivalent-domino-pairs/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import Foundation

class Solution_1128 {
  func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
    var res = 0
    var dict = [Int: Int]()
    for d in dominoes {
      let key = min(d[0], d[1]) * 10 + max(d[0], d[1])
      res += dict[key] ?? 0
      dict[key] = (dict[key] ?? 0) + 1
    }
    return res
  }
}
