//
//  1005. Maximize Sum Of Array After K Negations
//  https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/6/24.
//

import Foundation

class Solution_1005 {
  func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
    var nums = nums.sorted(), k = k, i = 0
    while i < nums.count, k > 0, nums[i] < 0 {
      nums[i] = -nums[i]
      i += 1
      k -= 1
    }
    return nums.reduce(0, +) - (k % 2) * 2 * nums.min()!
  }
}
