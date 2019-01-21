//
//  #108
//  https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.isEmpty == false else {
            return nil
        }
        
        let mid = nums.count / 2
        let treeNode: TreeNode = TreeNode(val: nums[mid])
        treeNode.left = sortedArrayToBST(Array(nums[0..<mid]))
        treeNode.right = sortedArrayToBST(Array(nums[mid + 1..<nums.count]))
        
        return treeNode
    }
}
