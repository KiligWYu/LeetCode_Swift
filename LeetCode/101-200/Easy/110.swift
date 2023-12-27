//
//  110. Balanced Binary Tree
//  https://leetcode.com/problems/balanced-binary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/12/23.
//

import Foundation

class Solution_110 {
  func isBalanced(_ root: TreeNode?) -> Bool {
    func getDepth(_ root: TreeNode?) -> Int {
      guard let root else { return 0 }

      let leftDepth = getDepth(root.left)
      if leftDepth == -1 {
        return -1
      }

      let rightDepth = getDepth(root.right)
      if rightDepth == -1 {
        return -1
      }

      if abs(leftDepth - rightDepth) > 1 {
        return -1
      }

      return max(leftDepth, rightDepth) + 1
    }

    return getDepth(root) != -1
  }
}
