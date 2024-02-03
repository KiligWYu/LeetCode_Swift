//
//  944. Delete Columns to Make Sorted
//  https://leetcode.com/problems/delete-columns-to-make-sorted/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/3/24.
//

import Foundation

class Solution_944 {
  func minDeletionSize(_ strs: [String]) -> Int {
    var res = 0, strs = strs.map { Array($0) }
    for i in 0..<strs[0].count {
      for j in 0..<strs.count - 1 {
        if strs[j][i] <= strs[j + 1][i] { continue }
        res += 1
        break
      }
    }
    return res
  }
}
