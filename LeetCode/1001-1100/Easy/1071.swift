//
//  1071. Greatest Common Divisor of Strings
//  https://leetcode.com/problems/greatest-common-divisor-of-strings/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/21/24.
//

import Foundation

class Solution_1071 {
  func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    guard str1 + str2 == str2 + str1 else { return "" }
    return String(str1.prefix(gcd(str1.count, str2.count)))
  }

  private func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    return r != 0 ? gcd(b, r) : b
  }
}
