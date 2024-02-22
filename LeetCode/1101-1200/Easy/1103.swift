//
//  1103. Distribute Candies to People
//  https://leetcode.com/problems/distribute-candies-to-people/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import Foundation

class Solution_1103 {
  func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
    var res = [Int](repeating: 0, count: num_people)
    var candies = candies, i = 0
    while candies > 0 {
      res[i % num_people] += min(candies, i + 1)
      candies -= (i + 1)
      i += 1
    }
    return res
  }
}
