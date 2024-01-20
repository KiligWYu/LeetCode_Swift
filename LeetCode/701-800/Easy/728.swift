//
//  728. Self Dividing Numbers
//  https://leetcode.com/problems/self-dividing-numbers/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import Foundation

class Solution_728 {
  func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var res = [Int]()

    for num in left ... right {
      var q = num
      while q > 0 {
        if q % 10 == 0 || num % (q % 10) != 0 { break }
        q /= 10
      }
      if q == 0 { res.append(num) }
    }

    return res
  }
}
