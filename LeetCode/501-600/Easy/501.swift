//
//  501. Find Mode in Binary Search Tree
//  https://leetcode.com/problems/find-mode-in-binary-search-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/5/24.
//

import Foundation

class Solution_501 {
  func findMode(_ root: TreeNode?) -> [Int] {
    var res = [Int](), max = 0, count = 1, pre: TreeNode? = nil
    inorder(root, &pre, &count, &max, &res)
    return res
  }

  private func inorder(_ node: TreeNode?, _ pre: inout TreeNode?, _ count: inout Int, _ max: inout Int, _ res: inout [Int]) {
    guard let node = node else { return }

    inorder(node.left, &pre, &count, &max, &res)
    
    if let pre = pre {
      count = (node.val == pre.val) ? count + 1 : 1
    }
    if count >= max {
      if count > max { res.removeAll() }
      res.append(node.val)
      max = count
    }
    
    pre = node
    inorder(node.right, &pre, &count, &max, &res)
  }
}
