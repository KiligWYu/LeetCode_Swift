//
//  563. Binary Tree Tilt
//  https://leetcode.com/problems/binary-tree-tilt/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/10/24.
//

import Foundation

class Solution_563 {
  func findTilt(_ root: TreeNode?) -> Int {
    var res = 0
    postorder(root, &res)
    return res
  }

  @discardableResult
  private func postorder(_ root: TreeNode?, _ res: inout Int) -> Int {
    guard let root else { return 0 }
    let leftSum = postorder(root.left, &res)
    let rightSum = postorder(root.right, &res)
    res += abs(leftSum - rightSum)
    return leftSum + rightSum + root.val
  }
}
