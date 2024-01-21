//
//  746. Min Cost Climbing Stairs
//  https://leetcode.com/problems/min-cost-climbing-stairs/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/21/24.
//

import Foundation

class Solution_746 {
  func minCostClimbingStairs(_ cost: [Int]) -> Int {
    var a = 0, b = 0
    for num in cost {
      let t = min(a, b) + num
      a = b
      b = t
    }
    return min(a, b)
  }
}
