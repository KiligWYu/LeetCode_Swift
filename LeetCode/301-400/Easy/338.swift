//
//  338. Counting Bits
//  https://leetcode.com/problems/counting-bits/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/18/23.
//

import Foundation
class Solution_338 {
  func countBits(_ n: Int) -> [Int] {
    guard n > 0 else { return [0] }

    var bits = [Int](repeating: 0, count: n + 1)
    var x = 1
    for i in 1 ... n {
      if i == x {
        x = x << 1
        bits[i] = 1
      } else {
        bits[i] = bits[i - (x >> 1)] + 1
      }
    }

    return bits
  }
}
