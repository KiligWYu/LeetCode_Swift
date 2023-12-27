//
//  290. Word Pattern
//  https://leetcode.com/problems/word-pattern/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/15/23.
//

import Foundation

class Solution_290 {
  func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let words = s.split(separator: " ")

    guard pattern.count == words.count else { return false }

    var dict = [Character: Substring]()

    for (i, char) in pattern.enumerated() {
      let word = words[i]

      if dict[char] == nil {
        if dict.values.contains(word) {
          return false
        }
        dict[char] = word
        continue
      }

      if dict[char] != word {
        return false
      }
    }

    return true
  }
}
