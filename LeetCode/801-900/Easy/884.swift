//
//  884. Uncommon Words from Two Sentences
//  https://leetcode.com/problems/uncommon-words-from-two-sentences/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import Foundation

class Solution_884 {
  func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
    Array(
      Dictionary(
        (s1 + " " + s2).split(separator: " ").map { (String($0), 1) },
        uniquingKeysWith: +
      )
      .filter { $0.value == 1 }
      .keys
    )
  }
}
