//
//  541. Reverse String II
//  https://leetcode.com/problems/reverse-string-ii/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/8/24.
//

import Foundation

class Solution_541 {
  func reverseStr(_ s: String, _ k: Int) -> String {
    var res = "", n = 1
    while s.count > (n - 1) * k {
      let endIndex = s.count >= k * n ? s.index(s.startIndex, offsetBy: k * n) : s.endIndex
      let str = s[s.index(s.startIndex, offsetBy: (n - 1) * k) ..< endIndex]
      res += n % 2 == 1 ? String(str.reversed()) : String(str)
      n += 1
    }
    return res
  }
}
