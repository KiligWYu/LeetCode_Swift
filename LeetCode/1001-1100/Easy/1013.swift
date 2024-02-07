//
//  1013. Partition Array Into Three Parts With Equal Sum
//  https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import Foundation

class Solution_1013 {
  func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
    let sum = arr.reduce(0, +)
    guard sum % 3 == 0 else { return false }
    let target = sum / 3
    var cur = 0, cnt = 0
    for num in arr {
      cur += num
      if cur == target {
        cnt += 1
        cur = 0
      }
    }
    return cnt >= 3
  }
}
