//
//  717. 1-bit and 2-bit Characters
//  https://leetcode.com/problems/1-bit-and-2-bit-characters/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import Foundation

class Solution_717 {
  func isOneBitCharacter(_ bits: [Int]) -> Bool {
    let n = bits.count
    var i = 0
    while i < n - 1 {
      i += bits[i] + 1
    }
    return i == n - 1
  }
}
