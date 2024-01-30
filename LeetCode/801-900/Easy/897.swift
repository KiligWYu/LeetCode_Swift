//
//  897. Increasing Order Search Tree
//  https://leetcode.com/problems/increasing-order-search-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/30/24.
//

import Foundation

class Solution_897 {
  func increasingBST(_ root: TreeNode?) -> TreeNode? {
    func helper(_ node: TreeNode?, _ pre: TreeNode?) -> TreeNode? {
      guard let node else { return pre }
      let res = helper(node.left, node)
      node.left = nil
      node.right = helper(node.right, pre)
      return res
    }
    return helper(root, nil)
  }
}
