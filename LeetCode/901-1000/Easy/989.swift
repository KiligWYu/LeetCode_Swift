//
//  989. Add to Array-Form of Integer
//  https://leetcode.com/problems/add-to-array-form-of-integer/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/5/24.
//

import Foundation

class Solution_989 {
  func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
    var num = num, k = k, carry = 0, i = num.count - 1
    while k > 0 || carry > 0 {
      var sum = k % 10 + carry
      if i >= 0 { sum += num[i] }
      carry = sum / 10
      sum %= 10
      if i >= 0 {
        num[i] = sum
        i -= 1
      } else {
        num.insert(sum, at: 0)
      }
      k /= 10
    }
    return num
  }
}
