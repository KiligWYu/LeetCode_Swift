//
//  657. Robot Return to Origin
//  https://leetcode.com/problems/robot-return-to-origin/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import Foundation

class Solution_657 {
  func judgeCircle(_ moves: String) -> Bool {
    let dict = Dictionary(moves.map { ($0, 1) }, uniquingKeysWith: +)
    return dict["L"] == dict["R"] && dict["U"] == dict["D"]
  }
}
