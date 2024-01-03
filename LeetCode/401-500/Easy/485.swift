//
//  485. Max Consecutive Ones
//  https://leetcode.com/problems/max-consecutive-ones/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/3/24.
//

import Foundation

class Solution_485 {
  func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    nums.split(separator: 0).map { $0.count }.max() ?? 0
  }
}
