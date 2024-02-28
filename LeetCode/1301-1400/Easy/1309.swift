//
//  1309. Decrypt String from Alphabet to Integer Mapping
//  https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/28/24.
//

import Foundation

class Solution_1309 {
  func freqAlphabets(_ s: String) -> String {
    var res = "", s = Array(s), i = 0
    while i < s.count {
      if i + 2 < s.count, s[i + 2] == "#" {
        res += String(UnicodeScalar(Int(String(s[i]) + String(s[i + 1]))! + 96)!)
        i += 3
      } else {
        res += String(UnicodeScalar(Int(String(s[i]))! + 96)!)
        i += 1
      }
    }
    return res
  }
}
