//
//  228. Summary Ranges
//  https://leetcode.com/problems/summary-ranges/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/7/23.
//

import Foundation

class Solution_228 {
  func summaryRanges(_ nums: [Int]) -> [String] {
    guard !nums.isEmpty else { return [String]() }

    var start = nums[0], end = nums[0], res = [String]()

    for i in 1 ..< nums.count {
      if nums[i] - nums[i - 1] == 1 {
        end = nums[i]
        continue
      }

      if start == end {
        res.append("\(end)")
      } else {
        res.append("\(start)->\(end)")
      }

      start = nums[i]
      end = nums[i]
    }

    if start == end {
      res.append("\(end)")
    } else {
      res.append("\(start)->\(end)")
    }
    return res
  }
}
