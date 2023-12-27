//
//  387. First Unique Character in a String
//  https://leetcode.com/problems/first-unique-character-in-a-string/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/24/23.
//

import Foundation

class Solution_387 {
  func firstUniqChar(_ s: String) -> Int {
    let dict = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)

    for (index, char) in s.enumerated() {
      if dict[char] == 1 {
        return index
      }
    }

    return -1
  }
}
