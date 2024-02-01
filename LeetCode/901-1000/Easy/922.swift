//
//  922. Sort Array By Parity II
//  https://leetcode.com/problems/sort-array-by-parity-ii/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/1/24.
//

import Foundation

class Solution_922 {
  func sortArrayByParityII(_ nums: [Int]) -> [Int] {
    var nums = nums, n = nums.count, i = 0, j = 1
    while i < n, j < n {
      if nums[i] % 2 == 0 { i += 2 }
      else if nums[j] % 2 == 1 { j += 2 }
      else { nums.swapAt(i, j) }
    }
    return nums
  }
}
