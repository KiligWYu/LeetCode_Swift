//
//  111. Minimum Depth of Binary Tree
//  https://leetcode.com/problems/minimum-depth-of-binary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/13/23.
//

import Foundation

class Solution_111 {
  func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }

    if root.left == nil {
      return 1 + minDepth(root.right)
    }
    if root.right == nil {
      return 1 + minDepth(root.left)
    }

    return 1 + min(minDepth(root.left), minDepth(root.right))
  }
}
