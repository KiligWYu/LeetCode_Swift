//
//  1175. Prime Arrangements
//  https://leetcode.com/problems/prime-arrangements/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import Foundation

class Solution_1175 {
  func numPrimeArrangements(_ n: Int) -> Int {
    if n < 3 { return 1 }
    var res = 1, count = 0, modulo = Int(1e9 + 7)
    var prime = [Bool](repeating: true, count: n + 1)
    prime[0] = false; prime[1] = false
    var i = 2
    while i * i <= n {
      if prime[i] {
        var factor = 2
        while factor * i <= n {
          prime[factor * i] = false
          factor += 1
        }
      }
      i += 1
    }
    for i in 1...n {
      if prime[i] { count += 1 }
    }
    for i in 1...count {
      res = res * i % modulo
    }
    for i in 1...n - count {
      res = res * i % modulo
    }
    return res
  }
}
