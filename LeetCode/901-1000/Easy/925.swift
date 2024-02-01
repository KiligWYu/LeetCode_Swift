//
//  925. Long Pressed Name
//  https://leetcode.com/problems/long-pressed-name/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/1/24.
//

import Foundation

class Solution_925 {
  func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var i = 0, name = Array(name), typed = Array(typed), m = name.count, n = typed.count
    for j in 0 ..< n {
      if i < m && name[i] == typed[j] { i += 1 }
      else if j == 0 || typed[j] != typed[j - 1] { return false }
    }
    return i == m
  }
}
