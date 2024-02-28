//
//  1287. Element Appearing More Than 25% In Sorted Array
//  https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import Foundation

class Solution_1287 {
  func findSpecialInteger(_ arr: [Int]) -> Int {
    let n = arr.count, t = n / 4
    for i in 0 ..< n - t {
      if arr[i] == arr[i + t] { return arr[i] }
    }
    return -1
  }
}
