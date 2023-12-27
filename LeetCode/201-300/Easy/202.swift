//
//  202. Happy Number
//  https://leetcode.com/problems/happy-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/28/23.
//

import Foundation

class Solution_202 {
  func isHappy(_ n: Int) -> Bool {
    var slow = n, fast = n

    func helper(_ n: Int) -> Int {
      var next = 0, n = n
      while n > 0 {
        let reminder = n % 10
        next += reminder * reminder
        n /= 10
      }
      return next
    }

    repeat {
      slow = helper(slow)
      fast = helper(helper(fast))
    } while slow != fast

    return slow == 1
  }
}
