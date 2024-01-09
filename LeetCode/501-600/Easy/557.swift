//
//  557. Reverse Words in a String III
//  https://leetcode.com/problems/reverse-words-in-a-string-iii/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import Foundation

class Solution_557 {
  func reverseWords(_ s: String) -> String {
    s.split(separator: " ").map { String($0.reversed()) }.joined(separator: " ")
  }
}
