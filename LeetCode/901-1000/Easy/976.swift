//
//  976. Largest Perimeter Triangle
//  https://leetcode.com/problems/largest-perimeter-triangle/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import Foundation

class Solution_976 {
  func largestPerimeter(_ nums: [Int]) -> Int {
    let nums = nums.sorted(by: >)
    for i in 2 ..< nums.count {
      if nums[i] + nums[i - 1] > nums[i - 2] {
        return nums[i] + nums[i - 1] + nums[i - 2]
      }
    }
    return 0
  }
}
