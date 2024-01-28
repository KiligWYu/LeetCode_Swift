//
//  868. Binary Gap
//  https://leetcode.com/problems/binary-gap/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/28/24.
//

import Foundation

class Solution_868 {
  func binaryGap(_ n: Int) -> Int {
    var res = 0, last = -1, n = n
    for i in 0 ..< 32 {
      if (n >> i) & 1 != 0 {
        if last >= 0 { res = max(res, i - last) }
        last = i
      }
    }
    return res
  }
}
