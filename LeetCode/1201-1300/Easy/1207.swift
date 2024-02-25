//
//  1207. Unique Number of Occurrences
//  https://leetcode.com/problems/unique-number-of-occurrences/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import Foundation

class Solution_1207 {
  func uniqueOccurrences(_ arr: [Int]) -> Bool {
    let counts = Dictionary(arr.map { ($0, 1) }, uniquingKeysWith: +).values
    return Set(counts).count == counts.count
  }
}
