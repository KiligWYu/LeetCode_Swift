//
//  222. Count Complete Tree Nodes
//  https://leetcode.com/problems/count-complete-tree-nodes/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/4/23.
//

import Foundation

class Solution_222 {
//  func countNodes(_ root: TreeNode?) -> Int {
//    if root == nil { return 0 }
//    return countNodes(root?.left) + countNodes(root?.right) + 1
//  }

  // https://leetcode.wang/leetcode-222-Count-Complete-Tree-Nodes.html
  private func getHeight(_ root: TreeNode?) -> Int {
    if root == nil {
      return 0
    } else {
      return getHeight(root?.left) + 1
    }
  }

  func countNodes(_ root: TreeNode?) -> Int {
    guard let root else {
      return 0
    }

    let height = getHeight(root)
    let rightHeight = getHeight(root.right)
    // 左子树是 perfect binary tree
    if rightHeight == height - 1 {
      // 左子树高度和右子树高度相等
      // 左子树加右子树加根节点
      // 1 << h 即 2^h
      // return (1 << rightHeight) - 1  + countNodes(root.right) + 1
      return (1 << rightHeight) + countNodes(root.right)
    } else { // 右子树是 perfect binary tree
      // 左子树加右子树加根节点
      // return countNodes(root.left) + (1 << rightHeight) - 1 + 1
      return countNodes(root.left) + (1 << rightHeight)
    }
  }
}
