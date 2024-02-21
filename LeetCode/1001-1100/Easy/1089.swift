//
//  1089. Duplicate Zeros
//  https://leetcode.com/problems/duplicate-zeros/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/21/24.
//

import Foundation

class Solution_1089 {
  func duplicateZeros(_ arr: inout [Int]) {
    var i = 0
    while i < arr.count - 1 {
      if arr[i] == 0 {
        arr.insert(0, at: i)
        arr.removeLast()
        i += 2
      } else {
        i += 1
      }
    }
  }
}
