//
//  389. Find the Difference
//  https://leetcode.com/problems/find-the-difference/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/24/23.
//

import Foundation

class Solution_389 {
  func findTheDifference(_ s: String, _ t: String) -> Character {
    let res = (s + t).utf8.reduce(0, ^)
    return Character(UnicodeScalar(res))
  }
}
