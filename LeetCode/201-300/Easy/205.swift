//
//  205. Isomorphic Strings
//  https://leetcode.com/problems/isomorphic-strings/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/30/23.
//

import Foundation

class Solution_205 {
  func isIsomorphic(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    
    var stDict = [Character: Character](), tsDict = [Character: Character]()
    let s = Array(s), t = Array(t)
            
    for (i, sChar) in s.enumerated() {
      let tChar = t[i]
                
      if stDict[sChar] == nil && tsDict[tChar] == nil {
        stDict[sChar] = tChar
        tsDict[tChar] = sChar
      } else if stDict[sChar] != tChar || tsDict[tChar] != sChar {
        return false
      }
    }
            
    return true
  }
}
