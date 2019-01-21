//
//  #110
//  https://leetcode.com/problems/balanced-binary-tree/
//

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        func helper(_ root: TreeNode?) -> Int {
            guard let root = root else {
                return 0
            }
            
            let left = helper(root.left), right = helper(root.right)
            if left == -1 || right == -1 {
                return -1
            }
            if abs(left - right) > 1 {
                return -1
            }
            return max(left, right) + 1
        }
        
        return helper(root) != -1
    }
}
