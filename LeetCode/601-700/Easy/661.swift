//
//  661. Image Smoother
//  https://leetcode.com/problems/image-smoother/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import Foundation

class Solution_661 {
  func imageSmoother(_ img: [[Int]]) -> [[Int]] {
    guard !img.isEmpty, !img[0].isEmpty else { return [] }

    var res = img, m = img.count, n = img[0].count
    let dirs = [(0, -1), (-1, -1), (-1, 0), (-1, 1), (0, 1), (1, 1), (1, 0), (1, -1)]
    for i in 0 ..< m {
      for j in 0 ..< n {
        var sum = img[i][j], count = 1
        for dir in dirs {
          let x = i + dir.0, y = j + dir.1
          if x < 0 || x >= m || y < 0 || y >= n { continue }
          count += 1
          sum += img[x][y]
        }
        res[i][j] = sum / count
      }
    }

    return res
  }
}
