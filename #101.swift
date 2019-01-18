//
//  #101
//  https://leetcode.com/problems/symmetric-tree/
//

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        
        func helper(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            if p == nil, q == nil {
                return true
            }
            if p?.val != q?.val {
                return false
            }
            return helper(p?.left, q?.right) && helper(p?.right, q?.left)
        }
        
        return helper(root.left, root.right)
    }
}
