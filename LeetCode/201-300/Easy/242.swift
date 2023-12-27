//
//  242. Valid Anagram
//  https://leetcode.com/problems/valid-anagram/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/11/23.
//

import Foundation

class Solution_242 {
  func isAnagram(_ s: String, _ t: String) -> Bool {
    let sDict = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +),
        tDict = Dictionary(t.map { ($0, 1) }, uniquingKeysWith: +)
    return sDict == tDict
  }
}
