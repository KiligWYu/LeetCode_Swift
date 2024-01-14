//
//  637. Average of Levels in Binary Tree
//  https://leetcode.com/problems/average-of-levels-in-binary-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/14/24.
//

import Foundation

class Solution_637 {
  func averageOfLevels(_ root: TreeNode?) -> [Double] {
    guard let root else { return [] }

    var nodes = [root], res = [Double]()

    while nodes.count > 0 {
      let count = nodes.count
      var sum = 0
      for _ in 0 ..< count {
        let node = nodes.removeFirst()
        sum += node.val
        if let left = node.left { nodes.append(left) }
        if let right = node.right { nodes.append(right) }
      }
      res.append(Double(sum) / Double(count))
    }

    return res
  }
}
