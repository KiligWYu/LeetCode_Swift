//
//  145. Binary Tree Postorder Traversal
//  https://leetcode.com/problems/binary-tree-postorder-traversal/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/21/23.
//

import Foundation

class Solution_145 {
  func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var res = [Int]()
    
    func helper(_ root: TreeNode?, _ res: inout [Int]) {
      guard let root = root else { return }
      
      if let left = root.left {
        helper(left, &res)
      }
      if let right = root.right {
        helper(right, &res)
      }
      res.append(root.val)
    }
    
    helper(root, &res)
    
    return res
  }
}
