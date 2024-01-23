//
//  783. Minimum Distance Between BST Nodes
//  https://leetcode.com/problems/minimum-distance-between-bst-nodes/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import Foundation

class Solution_783 {
  func minDiffInBST(_ root: TreeNode?) -> Int {
    var res = Int.max, pre = -1

    func helper(_ node: TreeNode?) {
      guard let node else { return }
      helper(node.left)
      if pre != -1 {
        res = min(res, node.val - pre)
      }
      pre = node.val
      helper(node.right)
    }

    helper(root)
    return res
  }
}
