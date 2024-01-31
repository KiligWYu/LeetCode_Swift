//
//  914. X of a Kind in a Deck of Cards
//  https://leetcode.com/problems/x-of-a-kind-in-a-deck-of-cards/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import Foundation

class Solution_914 {
  func hasGroupsSizeX(_ deck: [Int]) -> Bool {
    let dict = Dictionary(deck.map { ($0, 1) }, uniquingKeysWith: +)
    guard let min = dict.values.min(), min >= 2 else { return false }
    for i in 2 ... min {
      var res = true
      for num in dict.values {
        if num % i != 0 {
          res = false
          break
        }
      }
      if res == true { return true }
    }
    return false
  }
}
