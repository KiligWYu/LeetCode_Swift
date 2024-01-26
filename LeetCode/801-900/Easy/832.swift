//
//  832. Flipping an Image
//  https://leetcode.com/problems/flipping-an-image/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import Foundation

class Solution_832 {
  func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    image.map { $0.reversed().map { ($0 + 1) % 2 } }
  }
}
