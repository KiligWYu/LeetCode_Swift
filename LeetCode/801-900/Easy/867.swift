//
//  867. Transpose Matrix
//  https://leetcode.com/problems/transpose-matrix/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/28/24.
//

import Foundation

class Solution_867 {
  func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var res = [[Int]](repeating: [Int](), count: matrix[0].count)
    for row in matrix {
      for (index, num) in row.enumerated() {
        res[index].append(num)
      }
    }
    return res
  }
}
