//
//  896. Monotonic Array
//  https://leetcode.com/problems/monotonic-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/30/24.
//

import Foundation

class Solution_896 {
  func isMonotonic(_ nums: [Int]) -> Bool {
    var inc = true, dec = true
    for i in 0 ..< nums.count - 1 {
      inc = inc && nums[i + 1] >= nums[i]
      dec = dec && nums[i + 1] <= nums[i]
      if inc == false, dec == false { return false }
    }
    return true
  }
}
