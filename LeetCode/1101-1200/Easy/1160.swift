//
//  1160. Find Words That Can Be Formed by Characters
//  https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import Foundation

class Solution_1160 {
  func countCharacters(_ words: [String], _ chars: String) -> Int {
    var res = 0
    let dict = Dictionary(chars.map { ($0, 1) }, uniquingKeysWith: +)
    for word in words {
      var dict = dict, success = true
      for char in word {
        if dict[char] != nil {
          dict[char]! -= 1
          if dict[char]! < 0 { success = false; break }
        } else {
          success = false; break
        }
      }
      if success { res += word.count }
    }
    return res
  }
}
