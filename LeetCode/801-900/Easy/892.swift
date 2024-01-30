//
//  892. Surface Area of 3D Shapes
//  https://leetcode.com/problems/surface-area-of-3d-shapes/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/30/24.
//

import Foundation

class Solution_892 {
  func surfaceArea(_ grid: [[Int]]) -> Int {
    var n = grid.count, res = 0
    for i in 0 ..< n {
      for j in 0 ..< n {
        if grid[i][j] > 0 { res += 4 * grid[i][j] + 2 }
        if i > 0 { res -= min(grid[i][j], grid[i - 1][j]) * 2 }
        if j > 0 { res -= min(grid[i][j], grid[i][j - 1]) * 2 }
      }
    }
    return res
  }
}
