//
//  836. Rectangle Overlap
//  https://leetcode.com/problems/rectangle-overlap/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import Foundation

class Solution_836 {
  func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
    rec1[0] < rec2[2] && rec2[0] < rec1[2] && rec1[1] < rec2[3] && rec2[1] < rec1[3]
  }
}
