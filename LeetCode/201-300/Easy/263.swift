//
//  263. Ugly Number
//  https://leetcode.com/problems/ugly-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/13/23.
//

import Foundation

class Solution_263 {
  func isUgly(_ n: Int) -> Bool {
    guard n > 0 else { return false }

    if n % 2 == 0 {
      return isUgly(n / 2)
    }
    if n % 3 == 0 {
      return isUgly(n / 3)
    }
    if n % 5 == 0 {
      return isUgly(n / 5)
    }

    return n == 1
  }
}
