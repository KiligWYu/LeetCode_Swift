//
//  682. Baseball Game
//  https://leetcode.com/problems/baseball-game/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import Foundation

class Solution_682 {
  func calPoints(_ operations: [String]) -> Int {
    var scores = [Int]()
    for operation in operations {
      if let score = Int(operation) {
        scores.append(score)
      } else if operation == "+" {
        scores.append(scores.last! + scores[scores.count - 2])
      } else if operation == "D" {
        scores.append(scores.last! * 2)
      } else if operation == "C" {
        scores.removeLast()
      }
    }
    return scores.reduce(0, +)
  }
}
