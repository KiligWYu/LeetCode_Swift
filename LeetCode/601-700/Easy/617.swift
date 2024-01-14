//
//  617. Merge Two Binary Trees
//  https://leetcode.com/problems/merge-two-binary-trees/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/14/24.
//

import Foundation

class Solution_617 {
  func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
    guard let root1 else { return root2 }
    guard let root2 else { return root1 }
    let root = TreeNode(root1.val + root2.val)
    root.left = mergeTrees(root1.left, root2.left)
    root.right = mergeTrees(root1.right, root2.right)
    return root
  }
}
