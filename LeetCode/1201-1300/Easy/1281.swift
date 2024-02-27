//
//  1281. Subtract the Product and Sum of Digits of an Integer
//  https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import Foundation

class Solution_1281 {
  func subtractProductAndSum(_ n: Int) -> Int {
    var product = 1, sum = 0, n = n
    while n > 0 {
      let digit = n % 10
      product *= digit
      sum += digit
      n /= 10
    }
    return product - sum
  }
}
