//
//  9. Palindrome Number
//  https://leetcode.com/problems/palindrome-number/
//  https://leetcode.wang/leetCode-9-Palindrome-Number.html
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/1/23.
//

import Foundation

class Solution {
  func isPalindrome(_ x: Int) -> Bool {
    func reverse(_ x: Int) -> Int {
      var x = x, reverse = 0
      while x > 0 {
        if reverse > Int.max / 10 {
          return 0
        }
        let remainder = x % 10
        reverse = reverse * 10 + remainder

        x /= 10
      }
      return reverse
    }

    if x < 0 {
      return false
    }

    return x == reverse(x)
  }
}
