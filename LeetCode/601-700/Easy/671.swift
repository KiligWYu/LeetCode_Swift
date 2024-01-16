//
//  671. Second Minimum Node In a Binary Tree
//  https://leetcode.com/problems/second-minimum-node-in-a-binary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import Foundation

class Solution_671 {
  func findSecondMinimumValue(_ root: TreeNode?) -> Int {
    guard let leftNode = root?.left else { return -1 }
    let rightNode = root!.right!

    let left = (leftNode.val == root!.val)
      ? findSecondMinimumValue(leftNode) : leftNode.val
    let right = (rightNode.val == root!.val)
      ? findSecondMinimumValue(rightNode) : rightNode.val
    return (left == -1 || right == -1) ? max(left, right) : min(left, right)
  }
}
