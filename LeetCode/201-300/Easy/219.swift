//
//  219. Contains Duplicate II
//  https://leetcode.com/problems/contains-duplicate-ii/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/3/23.
//

import Foundation

class Solution_219 {
  func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    guard nums.count > 1 else {
      return false
    }

    var numToLastIndex = [Int: Int]()

    for (i, num) in nums.enumerated() {
      if let lastIndex = numToLastIndex[num], i - lastIndex <= k {
        return true
      } else {
        numToLastIndex[num] = i
      }
    }

    return false
  }
}
