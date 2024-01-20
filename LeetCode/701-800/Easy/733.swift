//
//  733. Flood Fill
//  https://leetcode.com/problems/flood-fill/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import Foundation

class Solution_733 {
  func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
    func helper(_ image: inout [[Int]], _ i: Int, _ j: Int) {
      let m = image.count, n = image[0].count
      if i < 0 || i >= m || j < 0 || j >= n || image[i][j] != starting { return }
      image[i][j] = color
      helper(&image, i + 1, j)
      helper(&image, i, j + 1)
      helper(&image, i - 1, j)
      helper(&image, i, j - 1)
    }

    let starting = image[sr][sc]
    if starting == color { return image }
    var image = image
    helper(&image, sr, sc)

    return image
  }
}
