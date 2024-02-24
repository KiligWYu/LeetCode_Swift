//
//  1200. Minimum Absolute Difference
//  https://leetcode.com/problems/minimum-absolute-difference/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import Foundation

class Solution_1200 {
  func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
    var arr = arr.sorted(), min = Int.max, res = [[Int]]()
    for i in 1 ..< arr.count {
      let diff = arr[i] - arr[i - 1]
      if diff <= min {
        if diff < min { res.removeAll() }
        min = diff
        res.append([arr[i - 1], arr[i]])
      }
    }
    return res
  }
}
