//
//  303. Range Sum Query - Immutable
//  https://leetcode.com/problems/range-sum-query-immutable/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/16/23.
//

import Foundation

class NumArray {
  private let nums: [Int]

  init(_ nums: [Int]) {
    self.nums = nums
  }

  func sumRange(_ left: Int, _ right: Int) -> Int {
    nums[left ... right].reduce(0, +)
  }
}
