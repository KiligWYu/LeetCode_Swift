//
//  1332. Remove Palindromic Subsequences
//  https://leetcode.com/problems/remove-palindromic-subsequences/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import Foundation

class Solution_1332 {
  func removePalindromeSub(_ s: String) -> Int {
    2 - (String(s.reversed()) == s ? 1 : 0)
  }
}
