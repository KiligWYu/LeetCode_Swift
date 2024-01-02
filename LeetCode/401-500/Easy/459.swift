//
//  459. Repeated Substring Pattern
//  https://leetcode.com/problems/repeated-substring-pattern/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import Foundation

class Solution_459 {
  func repeatedSubstringPattern(_ s: String) -> Bool {
    let concatenatedString = s + s
    let startIndex = concatenatedString.index(concatenatedString.startIndex, offsetBy: 1)
    guard let range = concatenatedString.range(
      of: s,
      options: [],
      range: startIndex ..< concatenatedString.endIndex
    ) else {
      return false
    }
    return range.upperBound != concatenatedString.endIndex
  }
}
