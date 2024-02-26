//
//  1275. Find Winner on a Tic Tac Toe Game
//  https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import Foundation

class Solution_1275 {
  func tictactoe(_ moves: [[Int]]) -> String {
    var a = [[Int]](repeating: [Int](repeating: 0, count: 3), count: 3), b = a
    for i in 0 ..< moves.count {
      if i % 2 == 0 { a[moves[i][0]][moves[i][1]] = 1 }
      else { b[moves[i][0]][moves[i][1]] = 1 }
    }
    if helper(a) { return "A" }
    if helper(b) { return "B" }
    return moves.count == 9 ? "Draw" : "Pending"
  }

  private func helper(_ v: [[Int]]) -> Bool {
    for i in 0 ..< 3 {
      if v[i][0] == 1 && v[i][1] == 1 && v[i][2] == 1 { return true }
      if v[0][i] == 1 && v[1][i] == 1 && v[2][i] == 1 { return true }
    }
    if v[0][0] == 1 && v[1][1] == 1 && v[2][2] == 1 { return true }
    if v[2][0] == 1 && v[1][1] == 1 && v[0][2] == 1 { return true }
    return false
  }
}
