//
//  350. Intersection of Two Arrays II
//  https://leetcode.com/problems/intersection-of-two-arrays-ii/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/21/23.
//

import Foundation

class Solution_350 {
  func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var freq = Dictionary(nums1.map { ($0, 1) }, uniquingKeysWith: +)
    var res = [Int]()

    for num in nums2 {
      if let numFreq = freq[num], numFreq > 0 {
        res.append(num)
        freq[num] = numFreq - 1
      }
    }

    return res
  }
}
