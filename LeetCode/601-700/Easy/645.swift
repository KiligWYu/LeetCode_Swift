//
//  645. Set Mismatch
//  https://leetcode.com/problems/set-mismatch/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/15/24.
//

import Foundation

class Solution_645 {
  func findErrorNums(_ nums: [Int]) -> [Int] {
    var nums = nums
    for i in 0..<nums.count {
      while nums[i] != nums[nums[i] - 1] {
        nums.swapAt(i, nums[i] - 1)
      }
    }
    for i in 0..<nums.count {
      if nums[i] != i + 1 { return [nums[i], i + 1] }
    }
    return []
  }
}
