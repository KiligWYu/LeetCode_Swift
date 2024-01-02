//
//  476. Number Complement
//  LeetCode
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import Foundation

class Solution_476 {
  func findComplement(_ num: Int) -> Int {
    var mask = Int.max
    while (mask & num) != 0 {
      mask <<= 1
    }
    return ~mask & ~num
  }

  /*
    func findComplement(_ num: Int) -> Int {
      (1 - num % 2) + 2 * (num <= 1 ? 0 : findComplement(num / 2))
    }
   */
}
