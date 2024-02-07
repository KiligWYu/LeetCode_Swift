//
//  1021. Remove Outermost Parentheses
//  https://leetcode.com/problems/remove-outermost-parentheses/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import Foundation

class Solution_1021 {
  func removeOuterParentheses(_ s: String) -> String {
    var res = "", count = 0
    for char in s {
      if char == "(" {
        if count > 0 { res.append(char) }
        count += 1
      }
      if char == ")" {
        if count > 1 { res.append(char) }
        count -= 1
      }
    }
    return res
  }
}
