//
//  744. Find Smallest Letter Greater Than Target
//  https://leetcode.com/problems/find-smallest-letter-greater-than-target/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/21/24.
//

import Foundation

class Solution_744 {
  func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
    letters.first { $0 > target } ?? letters.first!
  }
}
