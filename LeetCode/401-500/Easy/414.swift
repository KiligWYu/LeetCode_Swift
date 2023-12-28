//
//  414. Third Maximum Number
//  https://leetcode.com/problems/third-maximum-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/28/23.
//

import Foundation

class Solution_414 {
  func thirdMax(_ nums: [Int]) -> Int {
    var first = Int.min, second = Int.min, third = Int.min

    nums.forEach { num in
      if num > third, num < second {
        third = num
      } else if num > second, num < first {
        third = second; second = num
      } else if num > first {
        third = second; second = first; first = num
      }
    }

    return third == Int.min || third == second ? first : third
  }
}
