//
//  941. Valid Mountain Array
//  https://leetcode.com/problems/valid-mountain-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/2/24.
//

import Foundation

class Solution_941 {
  func validMountainArray(_ arr: [Int]) -> Bool {
    guard arr.count >= 3, arr[1] - arr[0] > 0 else { return false }
    var isIncreasing = true
    for i in 1 ..< arr.count {
      if arr[i] - arr[i - 1] == 0 {
        return false
      } else if arr[i] - arr[i - 1] < 0 {
        isIncreasing = false
      }
      if isIncreasing == false, arr[i] - arr[i - 1] > 0 {
        return false
      }
    }
    return isIncreasing == false
  }
}
