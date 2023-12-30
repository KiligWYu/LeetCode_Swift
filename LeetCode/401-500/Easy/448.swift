//
//  448. Find All Numbers Disappeared in an Array
//  https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/30/23.
//

import Foundation

class Solution_448 {
  func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var nums = nums, i = 0, res = [Int]()

    while i < nums.count {
      if nums[i] != nums[nums[i] - 1] {
        nums.swapAt(i, nums[i] - 1)
        i -= 1
      }
      i += 1
    }

    for (i, num) in nums.enumerated() {
      if num != i + 1 {
        res.append(i + 1)
      }
    }

    return res
  }

  /*
   func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
     Array(Set(1 ... nums.count).subtracting(Set(nums)))
   }
    */
}
