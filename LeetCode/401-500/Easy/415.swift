//
//  415. Add Strings
//  https://leetcode.com/problems/add-strings/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/29/23.
//

import Foundation

class Solution_415 {
  func addStrings(_ num1: String, _ num2: String) -> String {
    var i = num1.count - 1, j = num2.count - 1, sum = 0, carry = 0, res = ""

    while i >= 0 || j >= 0 {
      let a = i >= 0 ? Int(String(num1[num1.index(num1.startIndex, offsetBy: i)]))! : 0
      let b = j >= 0 ? Int(String(num2[num2.index(num2.startIndex, offsetBy: j)]))! : 0
      sum = a + b + carry
      res = "\(sum % 10)" + res
      carry = sum / 10
      i -= 1
      j -= 1
    }

    return carry > 0 ? "\(carry)" + res : res
  }
}
