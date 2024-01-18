//
//  700. Search in a Binary Search Tree
//  https://leetcode.com/problems/search-in-a-binary-search-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import Foundation

class Solution_700 {
  func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root else { return nil }

    if root.val == val {
      return root
    } else if root.val > val {
      return searchBST(root.left, val)
    } else {
      return searchBST(root.right, val)
    }
  }
}
