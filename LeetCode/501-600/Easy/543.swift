//
//  543. Diameter of Binary Tree
//  https://leetcode.com/problems/diameter-of-binary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/8/24.
//

import Foundation

class Solution_543 {
  func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var res = 0

    @discardableResult
    func help(_ node: TreeNode?) -> Int {
      if node == nil { return 0 }

      let left = help(node?.left)
      let right = help(node?.right)

      res = max(res, left + right)

      return max(left, right) + 1
    }

    help(root)
    return res
  }
}
