//
//  #437
//  https://leetcode.com/problems/path-sum-iii/
//

import Foundation

class Solution {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let root = root else {
            return 0
        }
        
        let res = totalPaths(root, sum)
        let left = pathSum(root.left, sum)
        let right = pathSum(root.right, sum)
        
        return res + left + right
    }
    
    private func totalPaths(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let root = root else {
            return 0
        }
        
        var res = 0
        if sum == root.val {
            res += 1
        }
        
        res += totalPaths(root.left, sum - root.val)
        res += totalPaths(root.right, sum - root.val)
        
        return res
    }
}
