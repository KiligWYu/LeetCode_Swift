//
//  1346. Check If N and Its Double Exist
//  https://leetcode.com/problems/check-if-n-and-its-double-exist/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import Foundation

class Solution_1346 {
  func checkIfExist(_ arr: [Int]) -> Bool {
    var nums = Set<Int>()
    for num in arr {
      if nums.contains(num * 2) || (num % 2 == 0 && nums.contains(num / 2)) {
        return true
      }
      nums.insert(num)
    }
    return false
  }
}
