//
//  217. Contains Duplicate
//  https://leetcode.com/problems/contains-duplicate/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/2/23.
//

import Foundation

class Solution_217 {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    return nums.count > Set(nums).count
  }
}
