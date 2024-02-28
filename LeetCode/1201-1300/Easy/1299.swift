//
//  1299. Replace Elements with Greatest Element on Right Side
//  https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/28/24.
//

import Foundation

class Solution_1299 {
  func replaceElements(_ arr: [Int]) -> [Int] {
    var n = arr.count, curMax = Int.min
    var res = [Int](repeating: -1, count: n)
    var i = n - 2
    while i >= 0 {
      curMax = max(curMax, arr[i + 1])
      res[i] = curMax
      i -= 1
    }
    return res
  }
}
