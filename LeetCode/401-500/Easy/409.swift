//
//  409. Longest Palindrome
//  https://leetcode.com/problems/longest-palindrome/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/27/23.
//

import Foundation

class Solution_409 {
  func longestPalindrome(_ s: String) -> Int {
    var res = 0, mid = false
    let countDict = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)

    for (_, value) in countDict {
      res += value
      if value % 2 == 1 {
        res -= 1
        mid = true
      }
    }

    return mid ? res + 1 : res
  }
}
