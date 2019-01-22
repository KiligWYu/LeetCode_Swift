//
//  #112
//  https://leetcode.com/problems/path-sum/
//

class Solution {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else {
            return false
        }
        if sum == root.val, root.left == nil, root.right == nil {
            return true
        }
        return hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val)
    }
}
