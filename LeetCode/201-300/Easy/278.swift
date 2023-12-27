//
//  278. First Bad Version
//  https://leetcode.com/problems/first-bad-version/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/14/23.
//

import Foundation

class VersionControl {
  var versions = [Bool]()

  func isBadVersion(_ version: Int) -> Bool {
    versions[version - 1]
  }
}

class Solution_278: VersionControl {
  func firstBadVersion(_ n: Int) -> Int {
    var left = 1, right = n, middle: Int
    while true {
      middle = (left + right) / 2
      if isBadVersion(middle) {
        if middle == 1 || isBadVersion(middle - 1) == false {
          return middle
        }
        right = middle - 1
      } else {
        if isBadVersion(middle + 1) == true {
          return middle + 1
        }
        left = middle + 1
      }
    }
  }
}
