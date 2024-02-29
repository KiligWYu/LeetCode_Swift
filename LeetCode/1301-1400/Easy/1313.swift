//
//  1313. Decompress Run-Length Encoded List
//  https://leetcode.com/problems/decompress-run-length-encoded-list/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import Foundation

class Solution_1313 {
  func decompressRLElist(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    for i in stride(from: 0, to: nums.count, by: 2) {
      res.append(contentsOf: [Int](repeating: nums[i + 1], count: nums[i]))
    }
    return res
  }
}
