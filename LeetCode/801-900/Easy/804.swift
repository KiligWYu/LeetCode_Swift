//
//  804. Unique Morse Code Words
//  https://leetcode.com/problems/unique-morse-code-words/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/24/24.
//

import Foundation

class Solution_804 {
  private let morseCode = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]

  func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let transformations = words.map {
      $0.reduce("") { $0 + morseCode[Int($1.asciiValue!) - 97] }
    }
    return Set(transformations).count
  }
}
