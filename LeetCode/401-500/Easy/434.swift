//
//  434. Number of Segments in a String
//  https://leetcode.com/problems/number-of-segments-in-a-string/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/29/23.
//

import Foundation

class Solution_434 {
  func countSegments(_ s: String) -> Int {
    s.split(separator: " ").count
  }
}
