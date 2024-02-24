//
//  1189. Maximum Number of Balloons
//  https://leetcode.com/problems/maximum-number-of-balloons/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import Foundation

class Solution_1189 {
  func maxNumberOfBalloons(_ text: String) -> Int {
    var res = Int.max
    let dict = Dictionary(text.map { ($0, 1) }, uniquingKeysWith: +)
    for char in "balloon" {
      guard let count = dict[char] else { return 0 }
      res = min(res, char == "l" || char == "o" ? count / 2 : count)
    }
    return res
  }
}
