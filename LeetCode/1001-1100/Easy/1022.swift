//
//  1022. Sum of Root To Leaf Binary Numbers
//  https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/8/24.
//

import Foundation

class Solution_1022 {
  func sumRootToLeaf(_ root: TreeNode?) -> Int {
    func helper(_ node: TreeNode?, _ cur: Int, _ res: inout Int) {
      guard let node else { return }
      var cur = cur
      cur = cur * 2 + node.val
      if node.left == nil && node.right == nil {
        res += cur
      }
      helper(node.left, cur, &res)
      helper(node.right, cur, &res)
    }

    var res = 0
    helper(root, 0, &res)
    return res
  }
}
