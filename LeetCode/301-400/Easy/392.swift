//
//  392. Is Subsequence
//  https://leetcode.com/problems/is-subsequence/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/26/23.
//

import Foundation

class Solution_392 {
  func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard !s.isEmpty else { return true }

    var i = 0, sChars = Array(s)
    for char in Array(t) {
      if char == sChars[i] {
        i += 1
        if i == sChars.count {
          return true
        }
      }
    }

    return false
  }
}
