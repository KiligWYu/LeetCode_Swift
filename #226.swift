//
//  #226
//  https://leetcode.com/problems/invert-binary-tree/
//

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        (root.left, root.right) = (root.right, root.left)
        
        invertTree(root.left)
        invertTree(root.right)
        
        return root
    }
}
