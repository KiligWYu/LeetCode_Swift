//
//  605. Can Place Flowers
//  https://leetcode.com/problems/can-place-flowers/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/13/24.
//

import Foundation

class Solution_605 {
  func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    let flowerbed = [0] + flowerbed + [0]
    var i = 1, n = n
    while i < flowerbed.count - 1 {
      if n == 0 { return true }
      if flowerbed[i - 1] + flowerbed[i] + flowerbed[i + 1] == 0 {
        n -= 1
        i += 1
      }
      i += 1
    }

    return n <= 0
  }
}
