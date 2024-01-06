//
//  507. Perfect Number
//  https://leetcode.com/problems/perfect-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import Foundation

class Solution_507 {
  func checkPerfectNumber(_ num: Int) -> Bool {
    if num == 1 { return false }

    var sum = 0
    for i in 1 ... num / 2 where num % i == 0 {
      if num / i < i { break }
      sum += i
      if i != 1, num / i != i { sum += num / i }
    }

    return sum == num
  }

  /*
   func checkPerfectNumber(_ num: Int) -> Bool {
     num == 6 || num == 28 || num == 496 || num == 8128 || num == 33550336
   }
    */
}
