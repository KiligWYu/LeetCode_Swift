//
//  771. Jewels and Stones
//  https://leetcode.com/problems/jewels-and-stones/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import Foundation

class Solution_771 {
  func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    stones.reduce(0) { $0 + (jewels.contains($1) ? 1 : 0) }
  }
}
