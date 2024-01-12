//
//  598. Range Addition II
//  https://leetcode.com/problems/range-addition-ii/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/12/24.
//

import Foundation

class Solution_598 {
  func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
    var m = m, n = n
    for op in ops {
      m = min(m, op[0])
      n = min(n, op[1])
    }
    return m * n
  }
}
