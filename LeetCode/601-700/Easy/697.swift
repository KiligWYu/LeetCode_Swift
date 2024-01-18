//
//  697. Degree of an Array
//  https://leetcode.com/problems/degree-of-an-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import Foundation

class Solution_697 {
  func findShortestSubArray(_ nums: [Int]) -> Int {
    let dict = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
    let count = dict.values.max()!
    let subNums = dict.keys.filter { dict[$0] == count }
    return subNums.map {
      nums.lastIndex(of: $0)! - nums.firstIndex(of: $0)! + 1
    }.min()!
  }
}
