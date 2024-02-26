//
//  1252. Cells with Odd Values in a Matrix
//  https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import Foundation

class Solution_1252 {
  func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
    var res = 0
    var rowCount = [Int](repeating: 0, count: m)
    var colCount = [Int](repeating: 0, count: n)
    for index in indices {
      rowCount[index[0]] += 1
      colCount[index[1]] += 1
    }
    for i in 0 ..< m {
      for j in 0 ..< n {
        res += (rowCount[i] + colCount[j]) % 2
      }
    }
    return res
  }
}
