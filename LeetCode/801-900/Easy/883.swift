//
//  883. Projection Area of 3D Shapes
//  https://leetcode.com/problems/projection-area-of-3d-shapes/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import Foundation

class Solution_883 {
  func projectionArea(_ grid: [[Int]]) -> Int {
    var n = grid[0].count, res = 0
    for i in 0..<n {
      var rowMax = 0, colMax = 0
      for j in 0..<n {
        if grid[i][j] > 0 { res += 1 }
        rowMax = max(rowMax, grid[i][j])
        colMax = max(colMax, grid[j][i])
      }
      res += rowMax + colMax
    }
    return res
  }
}
