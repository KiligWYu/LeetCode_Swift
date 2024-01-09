//
//  559. Maximum Depth of N-ary Tree
//  https://leetcode.com/problems/maximum-depth-of-n-ary-tree/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import Foundation

class Solution_559 {
  func maxDepth(_ root: Node?) -> Int {
    guard let root else { return 0 }
    var res = 1
    root.children.forEach { res = max(res, maxDepth($0) + 1) }
    return res
  }
}
