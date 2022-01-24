//: ## [106. 从中序与后序遍历序列构造二叉树](https://leetcode-cn.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/)
/*:
 根据一棵树的中序遍历与后序遍历构造二叉树。

 注意:
 \
 你可以假设树中没有重复的元素。
 */
/*:
 时间复杂度：`O(nlogn)`
 \
 空间复杂度：`O(n)`
 */

import Foundation

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?

  public init() { self.val = 0; self.left = nil; self.right = nil }

  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil }

  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    guard inorder.count > 0, postorder.count > 0, inorder.count == postorder.count else {
      return nil
    }

    return _buildHelper(inorder, 0, inorder.count - 1, postorder, 0, postorder.count - 1)
  }

  private func _buildHelper(_ inorder: [Int], _ inStart: Int, _ inEnd: Int, _ postorder: [Int], _ postStart: Int, _ postEnd: Int) -> TreeNode? {
    guard inStart <= inEnd, postStart <= postEnd else {
      return nil
    }

    let root = TreeNode(postorder[postEnd])

    var mid = 0
    for i in inStart ... inEnd where inorder[i] == root.val {
      mid = i
      break
    }

    root.left = _buildHelper(inorder, inStart, mid - 1, postorder, postStart, mid - 1 - inStart + postStart)
    root.right = _buildHelper(inorder, mid + 1, inEnd, postorder, mid - inStart + postStart, postEnd - 1)

    return root
  }
}

// Tests
let s = Solution()
s.buildTree([9, 3, 15, 20, 7], [9, 15, 7, 20, 3])
