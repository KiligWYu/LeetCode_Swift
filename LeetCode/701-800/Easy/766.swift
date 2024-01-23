//
//  766. Toeplitz Matrix
//  https://leetcode.com/problems/toeplitz-matrix/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import Foundation

class Solution_766 {
  func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    for i in 0 ..< matrix.count - 1 {
      for j in 0 ..< matrix[i].count - 1 {
        if matrix[i][j] != matrix[i + 1][j + 1] {
          return false
        }
      }
    }
    return true
  }
}
