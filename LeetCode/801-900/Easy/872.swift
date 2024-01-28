//
//  872. Leaf-Similar Trees
//  https://leetcode.com/problems/leaf-similar-trees/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/28/24.
//

import Foundation

class Solution_872 {
  func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    func helper(_ node: TreeNode?, _ leaf: inout [Int]) {
      guard let node else { return }
      if node.left == nil, node.right == nil { leaf.append(node.val) }
      helper(node.left, &leaf)
      helper(node.right, &leaf)
    }

    var leaf1 = [Int](), leaf2 = [Int]()
    helper(root1!, &leaf1)
    helper(root2!, &leaf2)
    return leaf1 == leaf2
  }
}
