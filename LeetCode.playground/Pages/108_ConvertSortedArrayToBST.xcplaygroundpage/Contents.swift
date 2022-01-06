//: ## [108. 将有序数组转换为二叉搜索树](https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree/)
/*:
 给你一个整数数组 `nums` ，其中元素已经按 **升序** 排列，请你将其转换为一棵 **高度平衡** 二叉搜索树。
 \
 **高度平衡** 二叉树是一棵满足「每个节点的左右两个子树的高度差的绝对值不超过 1 」的二叉树。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    return sortedArrayToBST(nums, 0, nums.count - 1)
  }

  private func sortedArrayToBST(_ nums: [Int], _ leftIdx: Int, _ rightIdx: Int) -> TreeNode? {
    guard leftIdx <= rightIdx else {
      return nil
    }

    let mid = (rightIdx - leftIdx) / 2 + leftIdx
    let root = TreeNode(nums[mid])

    root.left = sortedArrayToBST(nums, leftIdx, mid - 1)
    root.right = sortedArrayToBST(nums, mid + 1, rightIdx)

    return root
  }
}

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

// Tests
let s = Solution()
s.sortedArrayToBST([-10, -3, 0, 5, 9])
