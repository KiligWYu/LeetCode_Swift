//
//  589. N-ary Tree Preorder Traversal
//  https://leetcode.com/problems/n-ary-tree-preorder-traversal/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import Foundation

class Solution_589 {
  func preorder(_ root: Node?) -> [Int] {
    var res = [Int]()

    func helper(_ node: Node?, _ res: inout [Int]) {
      guard let node else { return }
      res.append(node.val)
      node.children.forEach { helper($0, &res) }
    }

    helper(root, &res)
    return res
  }
}
