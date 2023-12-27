//
//  70. Climbing Stairs
//  https://leetcode.com/problems/climbing-stairs/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/4/23.
//

import Foundation

class Solution {
  // f (n) = f(n - 1) + f(n - 2)
//  func climbStairs(_ n: Int) -> Int {
//    var prev = 0, post = 1, total = 0
//    for _ in 1...n {
//      total = prev + post
//
//      prev = post
//      post = total
//    }
//
//    return total
//  }

  // f(n) = 1/√5(((1+√5)/2)ⁿ⁺¹ - ((1-√5)/2)ⁿ⁺¹)
  func climbStairs(_ n: Int) -> Int {
    let sqrt5 = sqrt(5)
    let fibn = pow((1 + Decimal(sqrt5)) / 2, n + 1) - pow((1 - Decimal(sqrt5)) / 2, n + 1)
    return Int(NSDecimalNumber(decimal: fibn).doubleValue / sqrt5)
  }
}
