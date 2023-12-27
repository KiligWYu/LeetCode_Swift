//
//  226. Invert Binary Tree
//  https://leetcode.com/problems/invert-binary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/6/23.
//

import Foundation

class Solution_226 {
  func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root else { return nil }

    let left = root.left
    root.left = root.right
    root.right = left

    _ = invertTree(root.left)
    _ = invertTree(root.right)
    return root
  }
}
