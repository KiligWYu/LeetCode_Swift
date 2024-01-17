//
//  680. Valid Palindrome II
//  https://leetcode.com/problems/valid-palindrome-ii/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import Foundation

class Solution_680 {
  func validPalindrome(_ s: String) -> Bool {
    var left = s.startIndex, right = s.index(s.endIndex, offsetBy: -1)
    while left < right {
      if s[left] != s[right] {
        return isValid(s, left, s.index(right, offsetBy: -1))
          || isValid(s, s.index(left, offsetBy: 1), right)
      }
      left = s.index(left, offsetBy: 1)
      right = s.index(right, offsetBy: -1)
    }
    return true
  }

  private func isValid(_ s: String, _ left: String.Index, _ right: String.Index) -> Bool {
    var left = left, right = right
    while left < right {
      if s[left] != s[right] {
        return false
      }
      left = s.index(left, offsetBy: 1)
      right = s.index(right, offsetBy: -1)
    }
    return true
  }
}
