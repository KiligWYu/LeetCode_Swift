//
//  977. Squares of a Sorted Array
//  https://leetcode.com/problems/squares-of-a-sorted-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import Foundation

class Solution_977 {
  func sortedSquares(_ nums: [Int]) -> [Int] {
    var n = nums.count, i = 0, j = nums.count - 1
    var res = [Int](repeating: 0, count: n)
    for k in stride(from: n - 1, to: -1, by: -1) {
      if abs(nums[i]) > abs(nums[j]) {
        res[k] = nums[i] * nums[i]
        i += 1
      } else {
        res[k] = nums[j] * nums[j]
        j -= 1
      }
    }
    return res
  }
}
