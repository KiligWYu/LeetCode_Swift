//
//  104. Maximum Depth of Binary Tree
//  https://leetcode.com/problems/maximum-depth-of-binary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/11/23.
//

import Foundation

class Solution_104 {
  func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
  }
}
