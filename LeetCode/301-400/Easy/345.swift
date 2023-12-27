//
//  345. Reverse Vowels of a String
//  https://leetcode.com/problems/reverse-vowels-of-a-string/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/20/23.
//

import Foundation

class Solution_345 {
  func reverseVowels(_ s: String) -> String {
    var left = 0, right = s.count - 1
    var chars = Array(s)

    while left < right {
      if isVowel(chars[left]),
         isVowel(chars[right]) {
        chars.swapAt(left, right)
        left += 1
        right -= 1
      } else {
        if !isVowel(chars[left]) {
          left += 1
        } else {
          right -= 1
        }
      }
    }

    return String(chars)
  }

  private func isVowel(_ char: Character) -> Bool {
    Set("aeiouAEIOU").contains(char)
  }
}
