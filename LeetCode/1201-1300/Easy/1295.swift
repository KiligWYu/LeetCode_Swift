//
//  1295. Find Numbers with Even Number of Digits
//  https://leetcode.com/problems/find-numbers-with-even-number-of-digits/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import Foundation

class Solution_1295 {
  func findNumbers(_ nums: [Int]) -> Int {
    // 数字进行以 10 为底的对数运算，若得到奇数，则表示原数字是偶数位的
    nums
      .reduce(0) { partialResult, num in
        partialResult + Int(log10(Double(num))) & 1
      }
  }

  /*
   func findNumbers(_ nums: [Int]) -> Int {
     nums
       .map { "\($0)".count }
       .reduce(0) { partialResult, count in
         partialResult + (count % 2 == 0 ? 1 : 0)
       }
   }
    */
}
