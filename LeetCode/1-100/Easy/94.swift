//
//  94. Binary Tree Inorder Traversal
//  https://leetcode.com/problems/binary-tree-inorder-traversal/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/8/23.
//

import Foundation

class Solution {
  func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var res = [Int](), stack = [TreeNode](), node = root

    while node != nil || !stack.isEmpty {
      if let current = node {
        stack.append(current)
        node = current.left
      } else {
        let prevNode = stack.removeLast()
        res.append(prevNode.val)
        node = prevNode.right
      }
    }

    return res
  }
}
