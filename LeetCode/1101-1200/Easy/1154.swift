//
//  1154. Day of the Year
//  https://leetcode.com/problems/day-of-the-year/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import Foundation

class Solution_1154 {
  func dayOfYear(_ date: String) -> Int {
    let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let date = date.split(separator: "-").map { Int($0)! }
    let year = date[0], month = date[1], day = date[2]
    var res = 0
    for i in 0 ..< month - 1 {
      res += monthDays[i]
    }
    if month > 2 && (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)) {
      res += 1
    }
    return res + day
  }
}
