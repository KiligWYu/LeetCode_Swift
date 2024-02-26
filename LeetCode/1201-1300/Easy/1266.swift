//
//  1266. Minimum Time Visiting All Points
//  https://leetcode.com/problems/minimum-time-visiting-all-points/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import Foundation

class Solution_1266 {
  func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
    var res = 0
    for i in 0 ..< points.count - 1 {
      res += max(abs(points[i][0] - points[i + 1][0]),
                 abs(points[i][1] - points[i + 1][1]))
    }
    return res
  }
}
