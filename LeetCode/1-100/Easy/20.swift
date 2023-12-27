//
//  20. Valid Parentheses
//  https://leetcode.com/problems/valid-parentheses/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/1/23.
//

import Foundation

class Solution {
  func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    for char in s {
      if char == "(" || char == "[" || char == "{" {
        stack.append(char)
      } else {
        guard stack.count > 0 else { return false }
        let last = stack.removeLast()
        if (char == ")" && last != "(")
          || (char == "]" && last != "[")
          || (char == "}" && last != "{") {
          return false
        }
      }
    }

    return stack.isEmpty
  }
}
