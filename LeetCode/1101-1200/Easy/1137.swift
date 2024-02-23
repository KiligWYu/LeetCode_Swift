//
//  1137. N-th Tribonacci Number
//  https://leetcode.com/problems/n-th-tribonacci-number/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import Foundation

class Solution_1137 {
  func tribonacci(_ n: Int) -> Int {
    if n < 2 { return n }
    var first = 0, second = 1, third = 1
    for _ in 2 ..< n {
      let t = first
      first = second
      second = third
      third = t + first + second
    }
    return third
  }
}
