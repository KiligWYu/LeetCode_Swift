//
//  257. Binary Tree Paths
//  https://leetcode.com/problems/binary-tree-paths/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/12/23.
//

import Foundation

class Solution_257 {
  func binaryTreePaths(_ root: TreeNode?) -> [String] {
    var paths = [String]()

    guard let root = root else { return paths }

    func helper(_ root: TreeNode, _ path: String) {
      if root.left == nil, root.right == nil {
        paths.append(path + "\(root.val)")
        return
      }

      if let left = root.left {
        helper(left, path + "\(root.val)" + "->")
      }
      if let right = root.right {
        helper(right, path + "\(root.val)" + "->")
      }
    }

    helper(root, "")
    return paths
  }
}
