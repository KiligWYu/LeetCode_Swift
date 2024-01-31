//
//  905. Sort Array By Parity
//  https://leetcode.com/problems/sort-array-by-parity/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import Foundation

class Solution_905 {
  func sortArrayByParity(_ nums: [Int]) -> [Int] {
    nums.sorted { $0 % 2 == 0 && $1 % 2 != 0 }
  }
}
