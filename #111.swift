//
//  #111
//  https://leetcode.com/problems/minimum-depth-of-binary-tree/
//

class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        func helper(_ root: TreeNode?) -> Int {
            guard let root = root else {
                return Int.max
            }
            if root.left == nil && root.right == nil {
                return 1
            }
            return min(helper(root.left), helper(root.right)) + 1
        }
        
        return helper(root)
    }
}
