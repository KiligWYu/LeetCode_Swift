//
//  463. Island Perimeter
//  https://leetcode.com/problems/island-perimeter/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import Foundation

class Solution_463 {
  func islandPerimeter(_ grid: [[Int]]) -> Int {
    guard !grid.isEmpty, !grid[0].isEmpty else { return 0 }

    var res = 0, m = grid.count, n = grid[0].count
    for i in 0..<m {
      for j in 0..<n {
        if grid[i][j] == 0 { continue }
        res += 4
        if i > 0 && grid[i - 1][j] == 1 { res -= 2 }
        if j > 0 && grid[i][j - 1] == 1 { res -= 2 }
      }
    }

    return res
  }
}
