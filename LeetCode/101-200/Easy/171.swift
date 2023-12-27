//
//  171. Excel Sheet Column Number
//  https://leetcode.com/problems/excel-sheet-column-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/25/23.
//

import Foundation

class Solution_171 {
  func titleToNumber(_ columnTitle: String) -> Int {
    var res = 0
    for char in Array(columnTitle) {
      res = res * 26 + Int(char.asciiValue!) - 64
    }
    return res
  }
}
