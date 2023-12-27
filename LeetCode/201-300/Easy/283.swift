//
//  283. Move Zeroes
//  https://leetcode.com/problems/move-zeroes/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/15/23.
//

import Foundation

class Solution_283 {
  func moveZeroes(_ nums: inout [Int]) {
    var j = 0
    for i in 0 ..< nums.count {
      if nums[i] != 0 {
        let temp = nums[i]
        nums[i] = nums[j]
        nums[j] = temp
        j += 1
      }
    }
  }
}
