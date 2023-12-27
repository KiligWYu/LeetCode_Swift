//
//  144. Binary Tree Preorder Traversal
//  https://leetcode.com/problems/binary-tree-preorder-traversal/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/20/23.
//

import Foundation

class Solution_144 {
  func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var res = [Int]()

    func helper(_ root: TreeNode?, _ res: inout [Int]) {
      guard let root = root else { return }

      res.append(root.val)
      if let left = root.left {
        helper(left, &res)
      }
      if let right = root.right {
        helper(right, &res)
      }
    }

    helper(root, &res)

    return res
  }
}
