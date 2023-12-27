//
//  14. Longest Common Prefix
//  https://leetcode.com/problems/longest-common-prefix/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/1/23.
//

import Foundation

class Solution {
  func longestCommonPrefix(_ strs: [String]) -> String {
    func longestCommonPrefix(_ strs: [String], _ left: Int, _ right: Int) -> String {
      if left == right {
        return strs[left]
      } else {
        let mid = (left + right) / 2
        let lcpLeft = longestCommonPrefix(strs, left, mid)
        let lcpRight = longestCommonPrefix(strs, mid + 1, right)
        return commonPrefix(lcpLeft, lcpRight)
      }
    }

    if strs.isEmpty { return "" }
    return longestCommonPrefix(strs, 0, strs.count - 1)
  }

  private func commonPrefix(_ s1: String, _ s2: String) -> String {
    var res = ""
    for (i, char) in s1.enumerated() {
      if i == s2.count {
        return res
      }
      if char != s2[s2.index(s2.startIndex, offsetBy: i)] {
        return res
      }
      res.append(char)
    }
    return res
  }
}
