//
//  521. Longest Uncommon Subsequence I
//  https://leetcode.com/problems/longest-uncommon-subsequence-i/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/7/24.
//

import Foundation

class Solution_521 {
  func findLUSlength(_ a: String, _ b: String) -> Int {
    a == b ? -1 : max(a.count, b.count)
  }
}
