//
//  674. Longest Continuous Increasing Subsequence
//  https://leetcode.com/problems/longest-continuous-increasing-subsequence/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import Foundation

class Solution_674 {
  func findLengthOfLCIS(_ nums: [Int]) -> Int {
    var res = 1, count = 1
    for i in 1 ..< nums.count {
      nums[i] > nums[i - 1] ? (count += 1) : (count = 1)
      res = max(res, count)
    }
    return res
  }
}
