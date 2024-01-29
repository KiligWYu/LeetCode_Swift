//
//  888. Fair Candy Swap
//  https://leetcode.com/problems/fair-candy-swap/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import Foundation

class Solution_888 {
  func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
    let diff = (aliceSizes.reduce(0, +) - bobSizes.reduce(0, +)) / 2
    for num in bobSizes {
      if aliceSizes.contains(num + diff) {
        return [num + diff, num]
      }
    }
    return []
  }
}
