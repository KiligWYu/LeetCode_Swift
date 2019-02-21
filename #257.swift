//
//  #257
//  https://leetcode.com/problems/binary-tree-paths/
//

class Solution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else {
            return []
        }
        
        var res = [String]()
        if root.left == nil, root.right == nil {
            res.append("\(root.val)")
        }
        
        for path in binaryTreePaths(root.left) {
            res.append("\(root.val)->\(path)")
        }
        for path in binaryTreePaths(root.right) {
            res.append("\(root.val)->\(path)")
        }
        
        return res
    }
}
