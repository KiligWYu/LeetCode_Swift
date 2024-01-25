//
//  824. Goat Latin
//  https://leetcode.com/problems/goat-latin/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/25/24.
//

import Foundation

class Solution_824 {
  func toGoatLatin(_ sentence: String) -> String {
    let vowel = ["a", "e", "i", "o", "u"]
    var res = [String]()
    let words = sentence.split(separator: " ")

    for (index, word) in words.enumerated() {
      var newWord = ""
      let firstChar = word[word.startIndex]
      if vowel.contains(firstChar.lowercased()) {
        newWord = word + "ma"
      } else {
        newWord = word[word.index(word.startIndex, offsetBy: 1)...] + String(firstChar) + "ma"
      }
      newWord += String(repeating: "a", count: index + 1)
      res.append(newWord)
    }

    return res.joined(separator: " ")
  }
}
