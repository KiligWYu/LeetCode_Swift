//
//  100. Same Tree
//  https://leetcode.com/problems/same-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/9/23.
//

import Foundation

class Solution {
  func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p?.val == q?.val {
      if p == nil {
        return true
      } else {
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
      }
    } else {
      return false
    }
  }
}
