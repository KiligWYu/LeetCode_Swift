//
//  168. Excel Sheet Column Title
//  https://leetcode.com/problems/excel-sheet-column-title/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/23/23.
//

import Foundation

class Solution_168 {
  func convertToTitle(_ columnNumber: Int) -> String {
    var res = "", number = columnNumber

    while number > 0 {
      var complement = number % 26
      if complement == 0 {
        complement = 26
        number -= 1
      }
      res = String(Character(UnicodeScalar(64 + complement)!)) + res
      number /= 26
    }

    return res
  }
}
