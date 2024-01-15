//
//  643. Maximum Average Subarray I
//  https://leetcode.com/problems/maximum-average-subarray-i/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/15/24.
//

import Foundation

class Solution_643 {
  func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var sum = nums[0..<0 + k].reduce(0, +), res = sum
    for i in k..<nums.count {
      sum += nums[i] - nums[i - k]
      res = max(res, sum)
    }
    return Double(res) / Double(k)
  }
}
