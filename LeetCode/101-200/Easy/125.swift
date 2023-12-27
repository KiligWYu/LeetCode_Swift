//
//  125. Valid Palindrome
//  https://leetcode.com/problems/valid-palindrome/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/16/23.
//

import Foundation

class Solution_125 {
  func isPalindrome(_ s: String) -> Bool {
    var i = 0, j = s.count - 1
    let chars = Array(s.lowercased())
    while i < j {
      while !chars[i].isAlphanumberic && i < j {
        i += 1
      }

      while !chars[j].isAlphanumberic && i < j {
        j -= 1
      }

      if chars[i] != chars[j] {
        return false
      } else {
        i += 1
        j -= 1
      }
    }

    return true
  }
}

extension Character {
  var isAlphanumberic: Bool {
    self.isLetter || self.isNumber
  }
}
