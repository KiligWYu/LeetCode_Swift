//
//  965. Univalued Binary Tree
//  https://leetcode.com/problems/univalued-binary-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import Foundation

class Solution_965 {
  func isUnivalTree(_ root: TreeNode?) -> Bool {
    guard let root else { return true }
    if let left = root.left, root.val != left.val { return false }
    if let right = root.right, root.val != right.val { return false }
    return isUnivalTree(root.left) && isUnivalTree(root.right)
  }
}
