//
//  101. Symmetric Tree
//  https://leetcode.com/problems/symmetric-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/10/23.
//

import Foundation

class Solution_101 {
  func isSymmetric(_ root: TreeNode?) -> Bool {
    func helper(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
      if left?.val == right?.val {
        if left?.val == nil {
          return true
        } else {
          return helper(left?.left, right?.right) && helper(left?.right, right?.left)
        }
      } else {
        return false
      }
    }

    return helper(root?.left, root?.right)
  }
}
