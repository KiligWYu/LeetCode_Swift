//
//  1051. Height Checker
//  https://leetcode.com/problems/height-checker/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import Foundation

class Solution_1051 {
  func heightChecker(_ heights: [Int]) -> Int {
    let expected = heights.sorted()
    var res = 0
    for (index, height) in expected.enumerated() {
      if height != heights[index] { res += 1 }
    }
    return res
  }
}
