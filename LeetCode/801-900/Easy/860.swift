//
//  860. Lemonade Change
//  https://leetcode.com/problems/lemonade-change/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/27/24.
//

import Foundation

class Solution_860 {
  func lemonadeChange(_ bills: [Int]) -> Bool {
    var five = 0, ten = 0
    for bill in bills {
      if bill == 5 { five += 1 }
      else if bill == 10 { five -= 1; ten += 1 }
      else if ten > 0 { ten -= 1; five -= 1 }
      else { five -= 3 }
      if five < 0 { return false }
    }
    return true
  }
}
