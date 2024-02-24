//
//  1185. Day of the Week
//  https://leetcode.com/problems/day-of-the-week/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import Foundation

class Solution_1185 {
  // https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week#Sakamoto's_methods
  func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
    let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    let t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
    var year = year
    if month < 3 { year -= 1 }
    return days[(year + (year / 4 - year / 100 + year / 400) + t[month - 1] + day) % 7]
  }
}
