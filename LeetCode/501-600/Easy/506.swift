//
//  506. Relative Ranks
//  https://leetcode.com/problems/relative-ranks/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import Foundation

class Solution_506 {
  func findRelativeRanks(_ score: [Int]) -> [String] {
    var res = Array(repeating: "", count: score.count)
    let sorted = score.enumerated().sorted { $0.1 > $1.1 }

    for i in 0 ..< sorted.count {
      if i == 0 { res[sorted[i].0] = "Gold Medal" }
      else if i == 1 { res[sorted[i].0] = "Silver Medal" }
      else if i == 2 { res[sorted[i].0] = "Bronze Medal" }
      else { res[sorted[i].0] = "\(i + 1)" }
    }

    return res
  }
}
