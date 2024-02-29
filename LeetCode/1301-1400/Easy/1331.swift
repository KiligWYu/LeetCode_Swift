//
//  1331. Rank Transform of an Array
//  https://leetcode.com/problems/rank-transform-of-an-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import Foundation

class Solution_1331 {
  func arrayRankTransform(_ arr: [Int]) -> [Int] {
    let nums = arr.sorted()
    var dict = [Int: Int](), rank = 1

    for num in nums {
      if dict[num] == nil {
        dict[num] = rank
        rank += 1
      }
    }

    return arr.map { dict[$0]! }
  }
}
