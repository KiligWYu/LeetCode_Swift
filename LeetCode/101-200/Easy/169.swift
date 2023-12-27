//
//  169. Majority Element
//  https://leetcode.com/problems/majority-element/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/24/23.
//

import Foundation

class Solution_169 {
  // A Linear Time Majority Vote Algorithm
  // https://www.cs.utexas.edu/~moore/best-ideas/mjrty/index.html
  func majorityElement(_ nums: [Int]) -> Int {
    var count = 0, candidate = 0

    for num in nums {
      if count == 0 {
        candidate = num
      }

      count += (candidate == num) ? 1 : -1
    }

    return candidate
  }
}
