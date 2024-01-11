//
//  590. N-ary Tree Postorder Traversal
//  https://leetcode.com/problems/n-ary-tree-postorder-traversal/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import Foundation

class Solution_590 {
  func postorder(_ root: Node?) -> [Int] {
    var res = [Int]()

    func helper(_ node: Node?, _ res: inout [Int]) {
      guard let node else { return }
      node.children.forEach { helper($0, &res) }
      res.append(node.val)
    }

    helper(root, &res)
    return res
  }
}
