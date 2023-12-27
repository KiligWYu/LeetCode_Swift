//
//  404. Sum of Left Leaves
//  https://leetcode.com/problems/sum-of-left-leaves/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/26/23.
//

import Foundation

class Solution_404 {
  func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }

    if let left = root.left, left.left == nil, left.right == nil {
      return left.val + sumOfLeftLeaves(root.right)
    }

    return sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right)
  }
}
