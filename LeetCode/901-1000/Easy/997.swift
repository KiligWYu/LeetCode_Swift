//
//  997. Find the Town Judge
//  https://leetcode.com/problems/find-the-town-judge/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/5/24.
//

import Foundation

class Solution_997 {
  func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
    var `in` = [Int](repeating: 0, count: n + 1), out = `in`
    for a in trust {
      out[a[0]] += 1
      `in`[a[1]] += 1
    }
    for i in 1 ... n {
      if `in`[i] == n - 1 && out[i] == 0 { return i }
    }
    return -1
  }
}
