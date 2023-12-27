//
//  401. Binary Watch
//  https://leetcode.com/problems/binary-watch/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/26/23.
//

import Foundation

class Solution_401 {
  func readBinaryWatch(_ turnedOn: Int) -> [String] {
    var res = [String]()
    var hour = [8, 4, 2, 1], minute = [32, 16, 8, 4, 2, 1]

    for i in 0 ... turnedOn {
      let hours = generate(&hour, i)
      let minutes = generate(&minute, turnedOn - i)

      for hour in hours where hour < 12 {
        for minute in minutes where minute < 60 {
          res.append(String(format: "%d:%02d", hour, minute))
        }
      }
    }

    return res
  }

  private func generate(
    _ nums: inout [Int],
    _ count: Int
  ) -> [Int] {
    var res = [Int]()
    helper(&nums, count, 0, 0, &res)
    return res
  }

  private func helper(
    _ nums: inout [Int],
    _ count: Int,
    _ pos: Int,
    _ out: Int,
    _ res: inout [Int]
  ) {
    if count == 0 {
      res.append(out)
      return
    }
    for i in pos ..< nums.count {
      helper(&nums, count - 1, i + 1, out + nums[i], &res)
    }
  }
}
