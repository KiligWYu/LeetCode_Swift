//
//  520. Detect Capital
//  https://leetcode.com/problems/detect-capital/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/7/24.
//

import Foundation

class Solution_520 {
  func detectCapitalUse(_ word: String) -> Bool {
    var count = 0
    for i in 0 ..< word.count {
      if word[word.index(word.startIndex, offsetBy: i)] <= "Z" {
        count += 1
      }
    }
    return count == 0 || count == word.count || (count == 1 && word[word.startIndex] <= "Z")
  }
}
