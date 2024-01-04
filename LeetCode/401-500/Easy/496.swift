//
//  496. Next Greater Element I
//  https://leetcode.com/problems/next-greater-element-i/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/4/24.
//

import Foundation

class Solution_496 {
  func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var res = [Int]()

    for num in nums1 {
      let index = nums2.firstIndex(of: num)!
      let element = nums2[index + 1 ..< nums2.count].first { $0 > num } ?? -1
      res.append(element)
    }

    return res
  }
}
