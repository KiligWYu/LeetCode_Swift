//
//  441. Arranging Coins
//  https://leetcode.com/problems/arranging-coins/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/29/23.
//

import Foundation

class Solution_441 {
  /*
   n = (1 + x) * x / 2
   ⇩
   x = (-1 + sqrt (8 * n + 1)) / 2,
   */
  func arrangeCoins(_ n: Int) -> Int {
    Int((sqrt(Double(8 * n + 1)) - 1) / 2)
  }
}
