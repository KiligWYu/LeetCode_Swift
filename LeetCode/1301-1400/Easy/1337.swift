//
//  1337. The K Weakest Rows in a Matrix
//  https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import Foundation

class Solution_1337 {
  func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var nums = mat.enumerated().map { ($0, $1.firstIndex(of: 0) ?? $1.count) }
    nums.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }
    return nums[..<k].map { $0.0 }
  }
}

