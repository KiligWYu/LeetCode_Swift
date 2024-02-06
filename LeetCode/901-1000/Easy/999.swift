//
//  999. Available Captures for Rook
//  https://leetcode.com/problems/available-captures-for-rook/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/6/24.
//

import Foundation

class Solution_999 {
  func numRookCaptures(_ board: [[Character]]) -> Int {
    var x0 = 0, y0 = 0, res = 0
    let dirs = [[-1, 0], [0, 1], [1, 0], [0, -1]]
    for i in 0 ..< 8 {
      for j in 0 ..< 8 {
        if board[i][j] == "R" {
          x0 = i; y0 = j; break
        }
      }
    }
    for dir in dirs {
      var x = x0 + dir[0], y = y0 + dir[1]
      while x >= 0 && x < 8 && y >= 0 && y < 8 {
        if board[x][y] == "p" { res += 1 }
        if board[x][y] != "." { break }
        x += dir[0]; y += dir[1]
      }
    }
    return res
  }
}
