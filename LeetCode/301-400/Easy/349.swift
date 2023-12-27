//
//  349. Intersection of Two Arrays
//  https://leetcode.com/problems/intersection-of-two-arrays/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/21/23.
//

import Foundation

class Solution_349 {
  func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    Array(Set(nums1).intersection(Set(nums2)))
  }
}
