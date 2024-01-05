//
//  500. Keyboard Row
//  https://leetcode.com/problems/keyboard-row/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/5/24.
//

import Foundation

class Solution_500 {
  func findWords(_ words: [String]) -> [String] {
    let row1 = Set("qwertyuiop")
    let row2 = Set("asdfghjkl")
    let row3 = Set("zxcvbnm")
    var res = [String]()

    words.forEach { word in
      let charSet = Set(word.lowercased())
      if charSet.isSubset(of: row1)
        || charSet.isSubset(of: row2)
        || charSet.isSubset(of: row3) {
        res.append(word)
      }
    }

    return res
  }
}
