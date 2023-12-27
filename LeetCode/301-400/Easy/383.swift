//
//  383. Ransom Note
//  https://leetcode.com/problems/ransom-note/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/23/23.
//

import Foundation

class Solution_383 {
  func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var magazineDict = Dictionary(magazine.map { ($0, 1) }, uniquingKeysWith: +)

    for char in ransomNote {
      guard magazineDict[char] != nil else { return false }
      magazineDict[char]! -= 1
      if magazineDict[char]! < 0 { return false }
    }

    return true
  }
}
