//
//  606. Construct String from Binary Tree
//  https://leetcode.com/problems/construct-string-from-binary-tree/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/13/24.
//

import Foundation

class Solution_606 {
  func tree2str(_ root: TreeNode?) -> String {
    guard let root else { return "" }
    var res = "\(root.val)"
    if root.left == nil && root.right == nil { return res }
    res += "(" + tree2str(root.left) + ")"
    if let right = root.right { res += "(" + tree2str(right) + ")" }
    return res
  }

  /*
   func tree2str(_ root: TreeNode?) -> String {
     var res = ""

     func helper(_ root: TreeNode?) {
       guard let root else { return }

       res += "\(root.val)"

       if root.left == nil && root.right == nil { return }

       res += "("
       helper(root.left)
       res += ")"
       if let right = root.right {
         res += "("
         helper(right)
         res += ")"
       }
     }

     helper(root)
     return res
   }
    */
}
