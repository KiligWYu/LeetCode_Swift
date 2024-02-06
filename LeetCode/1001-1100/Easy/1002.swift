//
//  1002. Find Common Characters
//  https://leetcode.com/problems/find-common-characters/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/6/24.
//

import Foundation

class Solution_1002 {
  func commonChars(_ words: [String]) -> [String] {
    var res = [String]()
    var dicts = words.map {
      Dictionary($0.map { ($0, 1) }, uniquingKeysWith: +)
    }
    for char in words[0] {
      var minCount = Int.max
      for dict in dicts {
        minCount = min(minCount, dict[char] ?? 0)
      }
      if minCount > 0 {
        dicts[0][char] = 0
        res.append(contentsOf: [String](repeating: String(char), count: minCount))
      }
    }
    return res
  }
}
