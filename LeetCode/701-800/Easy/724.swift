//
//  724. Find Pivot Index
//  https://leetcode.com/problems/find-pivot-index/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import Foundation

class Solution_724 {
  func pivotIndex(_ nums: [Int]) -> Int {
    let sum = nums.reduce(0, +)
    var curSum = 0
    for (i, num) in nums.enumerated() {
      if curSum * 2 == sum - num { return i }
      curSum += num
    }
    return -1
  }

  /*
   func pivotIndex(_ nums: [Int]) -> Int {
     for i in 0..<nums.count {
       if nums[0..<i].reduce(0, +) == nums[(i + 1)...].reduce(0, +) {
         return i
       }
     }
     return -1
   }
    */
}
