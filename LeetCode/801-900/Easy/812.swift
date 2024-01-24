//
//  812. Largest Triangle Area
//  https://leetcode.com/problems/largest-triangle-area/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/24/24.
//

import Foundation

class Solution_812 {
  func largestTriangleArea(_ points: [[Int]]) -> Double {
    var res: Double = 0
    for i in points {
      for j in points {
        for k in points {
          res = max(res, 0.5 * Double(abs(i[0] * j[1] + j[0] * k[1] + k[0] * i[1] - j[0] * i[1] - k[0] * j[1] - i[0] * k[1])))
        }
      }
    }
    return res
  }
}
