//
//  1232. Check If It Is a Straight Line
//  https://leetcode.com/problems/check-if-it-is-a-straight-line/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import Foundation

class Solution_1232 {
  func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    let x1 = coordinates[0][0], y1 = coordinates[0][1]
    let x2 = coordinates[1][0], y2 = coordinates[1][1]
    for i in 2 ..< coordinates.count {
      let x3 = coordinates[i][0], y3 = coordinates[i][1]
      if (x2 - x1) * (y3 - y1) != (y2 - y1) * (x3 - x1) { return false }
    }
    return true
  }
}
