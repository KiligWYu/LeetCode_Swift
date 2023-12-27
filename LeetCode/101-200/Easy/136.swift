//
//  136. Single Number
//  https://leetcode.com/problems/single-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/17/23.
//

import Foundation

class Solution_136 {
  func singleNumber(_ nums: [Int]) -> Int {
    var res = 0
    for num in nums {
      res ^= num
    }
    return res
  }
}
