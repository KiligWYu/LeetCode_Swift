//
//  561. Array Partition
//  https://leetcode.com/problems/array-partition/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/10/24.
//

import Foundation

class Solution_561 {
  func arrayPairSum(_ nums: [Int]) -> Int {
    var res = 0
    for (index, num) in nums.sorted().enumerated() where index % 2 == 0 {
      res += num
    }
    return res
  }
}
