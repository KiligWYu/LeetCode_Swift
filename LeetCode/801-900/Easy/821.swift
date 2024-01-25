//
//  821. Shortest Distance to a Character
//  https://leetcode.com/problems/shortest-distance-to-a-character/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/25/24.
//

import Foundation

class Solution_821 {
  func shortestToChar(_ s: String, _ c: Character) -> [Int] {
    let targets = s.enumerated().reduce(into: [Int]()) {
      if $1.element == c {
        $0.append($1.offset)
      }
    }
    return Array(s).indices.reduce(into: [Int]()) { result, value in
      result.append(targets.map { abs($0 - value) }.min()!)
    }
  }
}
