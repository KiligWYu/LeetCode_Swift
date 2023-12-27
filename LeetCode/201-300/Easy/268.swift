//
//  268. Missing Number
//  https://leetcode.com/problems/missing-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/14/23.
//

import Foundation

class Solution_268 {
  /*
   func missingNumber(_ nums: [Int]) -> Int {
     var result = nums.count
     for i in 0 ..< nums.count {
       result = result ^ nums[i] ^ i
     }
     return result
   }
    */

  func missingNumber(_ nums: [Int]) -> Int {
    nums.count * (nums.count + 1) / 2 - nums.reduce(0, +)
  }

  /*
   func missingNumber(_ nums: [Int]) -> Int {
     Set(0...nums.count).subtracting(nums).first!
   }
   */
}
