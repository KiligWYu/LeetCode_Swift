//
//  572. Subtree of Another Tree
//  https://leetcode.com/problems/subtree-of-another-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import Foundation

class Solution_572 {
  func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    if root == nil, subRoot == nil { return true }
    if root == nil || subRoot == nil { return false }
    if isSameTree(root, subRoot) { return true }
    return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
  }

  func isSameTree(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    if root1 == nil, root2 == nil { return true }
    if root1 == nil || root2 == nil { return false }
    if root1?.val != root2?.val { return false }
    return isSameTree(root1?.left, root2?.left) && isSameTree(root1?.right, root2?.right)
  }
}
