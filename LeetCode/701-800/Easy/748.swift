//
//  748. Shortest Completing Word
//  https://leetcode.com/problems/shortest-completing-word/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/22/24.
//

import Foundation

class Solution_748 {
  func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
    var res = ""
    let licensePlate = licensePlate.replacing(/[\d ]+/, with: "").lowercased()
    let dict = Dictionary(licensePlate.map { ($0, 1) }, uniquingKeysWith: +)

    for word in words {
      let wordDict = Dictionary(word.map { ($0, 1) }, uniquingKeysWith: +)
      var isValid = true
      for (key, value) in dict {
        if wordDict[key] ?? 0 < value {
          isValid = false
          break
        }
      }
      if isValid && (res.isEmpty || word.count < res.count) {
        res = word
      }
    }

    return res
  }
}
