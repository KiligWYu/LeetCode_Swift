//
//  703. Kth Largest Element in a Stream
//  https://leetcode.com/problems/kth-largest-element-in-a-stream/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import Foundation

class KthLargest {
  private let k: Int
  private var knums: [Int]

  init(_ k: Int, _ nums: [Int]) {
    self.k = k
    self.knums = nums.sorted().suffix(k)
  }

  func add(_ val: Int) -> Int {
    knums.append(val)
    knums = knums.sorted()
    if knums.count > k {
      knums.removeFirst()
    }
    return knums.first!
  }
}
