//
//  704. Binary Search
//  https://leetcode.com/problems/binary-search/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/19/24.
//

import Foundation

class Solution_704 {
  func search(_ nums: [Int], _ target: Int) -> Int {
    if target < nums.first! || target > nums.last! {
      return -1
    }

    var left = 0, right = nums.count - 1
    while left <= right {
      let mid = left + (right - left) / 2
      print("mid: ", mid, "num: ", nums[mid])
      if target == nums[mid] {
        return mid
      } else if target < nums[mid] {
        right = mid - 1
      } else {
        left = mid + 1
      }
    }

    return -1
  }
}
