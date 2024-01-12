//
//  594. Longest Harmonious Subsequence
//  https://leetcode.com/problems/longest-harmonious-subsequence/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/12/24.
//

import Foundation

class Solution_594 {
  func findLHS(_ nums: [Int]) -> Int {
    let dict = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
    var res = 0
    for num in dict.keys {
      if let count = dict[num + 1] {
        res = max(res, dict[num]! + count)
      }
    }
    return res
  }
}
