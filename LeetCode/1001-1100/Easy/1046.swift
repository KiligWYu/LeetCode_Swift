//
//  1046. Last Stone Weight
//  https://leetcode.com/problems/last-stone-weight/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import Foundation

class Solution_1046 {
  func lastStoneWeight(_ stones: [Int]) -> Int {
    var stones = stones.sorted(by: >)
    while stones.count != 1 {
      let secondItem = stones.remove(at: 1)
      stones[0] -= secondItem
      stones = stones.sorted(by: >)
    }
    return stones[0]
  }
}
