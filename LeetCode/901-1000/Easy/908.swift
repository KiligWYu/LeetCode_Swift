//
//  908. Smallest Range I
//  https://leetcode.com/problems/smallest-range-i/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import Foundation

class Solution_908 {
  func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
    max(0, nums.max()! - nums.min()! - 2 * k)
  }
}
