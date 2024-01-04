//
//  495. Teemo Attacking
//  https://leetcode.com/problems/teemo-attacking/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/4/24.
//

import Foundation

class Solution_495 {
  func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    guard duration > 0 else { return 0 }

    var res = 0

    for i in 1 ..< timeSeries.count {
      let diff = timeSeries[i] - timeSeries[i - 1]
      res += diff < duration ? diff : duration
    }

    return res + duration
  }
}
