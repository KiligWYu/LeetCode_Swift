//
//  796. Rotate String
//  https://leetcode.com/problems/rotate-string/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import Foundation

class Solution_796 {
  func rotateString(_ s: String, _ goal: String) -> Bool {
    s.count == goal.count && (s + s).contains(goal)
  }
}
