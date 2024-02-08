//
//  1030. Matrix Cells in Distance Order
//   https://leetcode.com/problems/matrix-cells-in-distance-order/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/8/24.
//

import Foundation

class Solution_1030 {
  func allCellsDistOrder(_ rows: Int, _ cols: Int, _ rCenter: Int, _ cCenter: Int) -> [[Int]] {
    var res = [[Int]]()
    for i in 0..<rows {
      for j in 0..<cols {
        res.append([i, j])
      }
    }
    return res.sorted {
      abs($0[0] - rCenter) + abs($0[1] - cCenter)
        < abs($1[0] - rCenter) + abs($1[1] - cCenter)
    }
  }
}
