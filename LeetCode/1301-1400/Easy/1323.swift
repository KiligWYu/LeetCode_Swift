//
//  1323. Maximum 69 Number
//  https://leetcode.com/problems/maximum-69-number/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import Foundation

class Solution_1323 {
  func maximum69Number(_ num: Int) -> Int {
    var chars = Array("\(num)")
    if let index = chars.firstIndex(where: { $0 == "6" }) {
      chars[index] = "9"
      return Int(String(chars))!
    } else {
      return num
    }
  }
}
