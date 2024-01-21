//
//  747. Largest Number At Least Twice of Others
//  https://leetcode.com/problems/largest-number-at-least-twice-of-others/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/21/24.
//

import Foundation

class Solution_747 {
  func dominantIndex(_ nums: [Int]) -> Int {
    let res = nums.max()!
    for num in nums {
      if num != res, res - num < num { return -1 }
    }
    return nums.firstIndex(of: res)!
  }
}
