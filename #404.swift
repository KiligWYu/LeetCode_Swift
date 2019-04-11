//
//  ¥404
//  https://leetcode.com/problems/sum-of-left-leaves/
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        var res = 0
        
        func helper(_ root: TreeNode?) {
            guard let root = root else {
                return
            }
            
            res += root.left?.val ?? 0
            
            helper(root.left)
            helper(root.right)
        }
        
        helper(root)
        
        return res
    }
}
