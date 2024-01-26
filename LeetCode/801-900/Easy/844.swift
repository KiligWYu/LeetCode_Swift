//
//  844. Backspace String Compare
//  https://leetcode.com/problems/backspace-string-compare/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import Foundation

class Solution_844 {
  func backspaceCompare(_ s: String, _ t: String) -> Bool {
    let nextPartialResult: (String, Character) -> String = {
      if $1 == "#" {
        if $0.isEmpty { return $0 }
        return String($0[..<$0.index(before: $0.endIndex)])
      } else {
        return $0 + String($1)
      }
    }
    return s.reduce("", nextPartialResult) == t.reduce("", nextPartialResult)
  }
}
