//
//  455. Assign Cookies
//  https://leetcode.com/problems/assign-cookies/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/30/23.
//

import Foundation

class Solution_455 {
  func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    let g = g.sorted(), s = s.sorted()
    var i = 0, j = 0

    while i < s.count, j < g.count {
      if s[i] >= g[j] {
        j += 1
      }
      i += 1
    }

    return j
  }
}
