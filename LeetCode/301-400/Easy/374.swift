//
//  374. Guess Number Higher or Lower
//  https://leetcode.com/problems/guess-number-higher-or-lower/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/23/23.
//

import Foundation

class Solution_374 {
  func guessNumber(_ n: Int) -> Int {
    var left = 1, right = n, mid: Int!

    while left <= right {
      mid = left + (right - left) / 2
      let guess = guess(mid)
      if guess == -1 {
        right = mid - 1
      } else if guess == 1 {
        left = mid + 1
      } else {
        return mid
      }
    }

    return mid
  }

  var pick: Int!

  private func guess(_ num: Int) -> Int {
    if num > pick { return -1 }
    else if num < pick { return 1 }
    else { return 0 }
  }
}
