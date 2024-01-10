//
//  566. Reshape the Matrix
//  https://leetcode.com/problems/reshape-the-matrix/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/10/24.
//

import Foundation

class Solution_566 {
  func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    let m = mat.count, n = mat[0].count
    guard r * c == m * n else { return mat }

    var res = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)
    for i in 0 ..< r * c {
      res[i / c][i % c] = mat[i / n][i % n]
    }

    return res
  }
}
