//
//  575. Distribute Candies
//  https://leetcode.com/problems/distribute-candies/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import Foundation

class Solution_575 {
  func distributeCandies(_ candyType: [Int]) -> Int {
    min(candyType.count / 2, Set(candyType).count)
  }
}
