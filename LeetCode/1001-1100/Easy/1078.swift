//
//  1078. Occurrences After Bigram
//  https://leetcode.com/problems/occurrences-after-bigram/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/21/24.
//

import Foundation

class Solution_1078 {
  func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
    var res = [String](), words = text.split(separator: " ")
    guard words.count > 2 else { return res }
    for i in 2 ..< words.count {
      if words[i - 2] == first, words[i - 1] == second {
        res.append(String(words[i]))
      }
    }
    return res
  }
}
