//
//  509. Fibonacci Number
//  https://leetcode.com/problems/fibonacci-number/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import Foundation

class Solution_509 {
  private var fibDict = [0: 0, 1: 1]

  func fib(_ n: Int) -> Int {
    if n < 2 { return fibDict[n]! }
    if let value = fibDict[n] {
      return value
    } else {
      fibDict[n] = fib(n - 1) + fib(n - 2)
      return fibDict[n]!
    }
  }
}
