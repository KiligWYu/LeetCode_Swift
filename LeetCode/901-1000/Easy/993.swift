//
//  993. Cousins in Binary Tree
//  https://leetcode.com/problems/cousins-in-binary-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/5/24.
//

import Foundation

class Solution_993 {
  func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
    func helper(_ node: TreeNode?,
                _ depth: Int,
                _ parent: Int,
                _ m: inout [Int: (Int, Int)]) {
      guard let node else { return }
      m[node.val] = (depth, parent)
      helper(node.left, depth + 1, node.val, &m)
      helper(node.right, depth + 1, node.val, &m)
    }

    var m = [Int: (Int, Int)]()
    helper(root, 0, -1, &m)
    return m[x]!.0 == m[y]!.0 && m[x]!.1 != m[y]!.1
  }
}
