//
//  1304. Find N Unique Integers Sum up to Zero
//  https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/28/24.
//

import Foundation

class Solution_1304 {
  func sumZero(_ n: Int) -> [Int] {
    var res = [Int](repeating: 0, count: n)
    for i in 1 ..< n {
      res[i] = i
      res[0] -= i
    }
    return res
  }
}
