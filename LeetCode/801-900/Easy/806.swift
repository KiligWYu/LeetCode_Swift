//
//  806. Number of Lines To Write String
//  https://leetcode.com/problems/number-of-lines-to-write-string/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/24/24.
//

import Foundation

class Solution_806 {
  func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
    var lines = 1, width = 0
    for char in s {
      let pixels = widths[Int(char.asciiValue!) - 97]
      if width + pixels > 100 {
        lines += 1
        width = pixels
      } else {
        width += pixels
      }
    }
    return [lines, width]
  }
}
