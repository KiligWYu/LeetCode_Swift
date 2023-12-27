//
//  112. Path Sum
//  https://leetcode.com/problems/path-sum/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/14/23.
//

import Foundation

class Solution_112 {
  func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    guard let root = root else { return false }

    if root.val == targetSum, root.left == nil, root.right == nil {
      return true
    }

    return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
  }
}
