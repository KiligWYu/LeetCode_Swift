//
//  1217. Minimum Cost to Move Chips to The Same Position
//  https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import Foundation

class Solution_1217 {
  func minCostToMoveChips(_ position: [Int]) -> Int {
    var even = 0, odd = 0
    for pos in position {
      pos % 2 == 1 ? (odd += 1) : (even += 1)
    }
    return min(odd, even)
  }
}
