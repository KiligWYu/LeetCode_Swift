//
//  1037. Valid Boomerang
//  https://leetcode.com/problems/valid-boomerang/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import Foundation

class Solution_1037 {
  func isBoomerang(_ points: [[Int]]) -> Bool {
    (points[2][1] - points[0][1]) * (points[1][0] - points[0][0])
      != (points[1][1] - points[0][1]) * (points[2][0] - points[0][0])
  }
}
