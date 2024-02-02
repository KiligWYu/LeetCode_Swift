//
//  938. highange Sum of BST
//  https://leetcode.com/problems/range-sum-of-bst/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/2/24.
//

import Foundation

class Solution_938 {
  func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    guard let root else { return 0 }
    if root.val < low { return rangeSumBST(root.right, low, high) }
    if root.val > high { return rangeSumBST(root.left, low, high) }
    return root.val
      + rangeSumBST(root.left, low, high)
      + rangeSumBST(root.right, low, high)
  }
}
