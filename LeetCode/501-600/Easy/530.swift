//
//  530. Minimum Absolute Difference in BST
//  https://leetcode.com/problems/minimum-absolute-difference-in-bst/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/7/24.
//

import Foundation

class Solution_530 {
  func getMinimumDifference(_ root: TreeNode?) -> Int {
    var res = Int.max, pre = -1
    inorder(root, &pre, &res)
    return res
  }

  private func inorder(_ root: TreeNode?, _ pre: inout Int, _ res: inout Int) {
    guard let root else { return }
    inorder(root.left, &pre, &res)
    if pre != -1 { res = min(res, root.val - pre) }
    pre = root.val
    inorder(root.right, &pre, &res)
  }
}
