//
//  461. Hamming Distance
//  https://leetcode.com/problems/hamming-distance/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import Foundation

class Solution_461 {
  func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var res = 0, exc = x ^ y
    while exc != 0 {
      res += 1
      exc &= (exc - 1)
    }
    return res
  }
}
