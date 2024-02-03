//
//  953. Verifying an Alien Dictionary
//  https://leetcode.com/problems/verifying-an-alien-dictionary/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/3/24.
//

import Foundation

class Solution_953 {
  func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    let translationTable = Dictionary(
      uniqueKeysWithValues: zip(order, "abcdefghijklmnopqrstuvwxyz")
    )
    var prev = [Character]()
    for word in words {
      var current = [Character]()
      var precedes = false, equals = true
      for (i, ch) in word.enumerated() {
        let ch = translationTable[ch]!
        if i < prev.count && prev[i] != ch {
          if prev[i] < ch {
            precedes = true
          } else if !precedes {
            return false
          }
          equals = false
        }
        current.append(ch)
      }
      guard !equals || current.count >= prev.count else { return false }
      prev = current
    }
    return true
  }
}
