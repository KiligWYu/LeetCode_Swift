//
//  492. Construct the Rectangle
//  https://leetcode.com/problems/construct-the-rectangle/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/4/24.
//

import Foundation

class Solution_492 {
  func constructRectangle(_ area: Int) -> [Int] {
    var r = 1, i = 1
    while i * i <= area {
      if area % i == 0 { r = i }
      i += 1
    }
    return [area / r, r]
  }
}
