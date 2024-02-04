//
//  961. N-Repeated Element in Size 2N Array
//  https://leetcode.com/problems/n-repeated-element-in-size-2n-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import Foundation

class Solution_961 {
  func repeatedNTimes(_ nums: [Int]) -> Int {
    for i in 2 ..< nums.count {
      if nums[i] == nums[i - 1] || nums[i] == nums[i - 2] {
        return nums[i]
      }
    }
    return nums[0]
  }
}
