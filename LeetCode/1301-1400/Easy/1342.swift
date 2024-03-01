//
//  1342. Number of Steps to Reduce a Number to Zero
//  https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import Foundation

class Solution_1342 {
  func numberOfSteps(_ num: Int) -> Int {
    var res = 0, num = num
    while num > 0 {
      num % 2 == 0 ? (num /= 2) : (num -= 1)
      res += 1
    }
    return res
  }
}
