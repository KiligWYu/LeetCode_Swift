//
//  28. Find the Index of the First Occurrence in a String
//  https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 10/31/23.
//

import Foundation

class Solution {
  func strStr(_ hayStack: String, _ needle: String) -> Int {
    if needle.isEmpty { return 0 }

    let hChar = Array(hayStack), nChar = Array(needle)
    let hLen = hChar.count, nLen = nChar.count

    if hLen < nLen { return -1 }

    for i in 0 ... hLen - nLen {
      if hChar[i] == nChar[0] {
        for j in 0 ..< nLen {
          if hChar[i + j] != nChar[j] {
            break
          }
          if j + 1 == nLen {
            return i
          }
        }
      }
    }

    return -1
  }
}
