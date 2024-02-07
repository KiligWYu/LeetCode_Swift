//
//  1018. Binary Prefix Divisible By 5
//  https://leetcode.com/problems/binary-prefix-divisible-by-5/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import Foundation

class Solution_1018 {
  func prefixesDivBy5(_ nums: [Int]) -> [Bool] {
    var res = [Bool]()
    var cur = 0
    for i in 0 ..< nums.count {
      cur = (cur * 2 + nums[i]) % 5
      res.append(cur % 5 == 0)
    }
    return res
  }
}
