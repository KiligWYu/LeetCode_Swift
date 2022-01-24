//: [105. 从前序与中序遍历序列构造二叉树](https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)
/*:
 给定一棵树的前序遍历 `preorder` 与中序遍历  `inorder`。请构造二叉树并返回其根节点。
 */
/*:
 时间复杂度：`O(n^n)`
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
  func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    guard preorder.count == inorder.count else {
      return nil
    }

    return _buildHelper(preorder, 0, preorder.count - 1, inorder, 0, inorder.count - 1)
  }

  private func _buildHelper(_ preorder: [Int], _ preStart: Int, _ preEnd: Int, _ inorder: [Int], _ inStart: Int, _ inEnd: Int) -> TreeNode? {
    guard preStart <= preEnd, inStart <= inEnd else {
      return nil
    }

    guard let rootIndex = inorder.firstIndex(of: preorder[preStart]) else {
      return nil
    }
    let root = TreeNode(preorder[preStart])

    root.left = _buildHelper(preorder, preStart + 1, preStart + rootIndex - inStart, inorder, inStart, rootIndex - 1)
    root.right = _buildHelper(preorder, preStart + rootIndex - inStart + 1, preEnd, inorder, rootIndex + 1, inEnd)

    return root
  }
}

// Tests
let s = Solution()
s.buildTree([3, 9, 20, 15, 7], [9, 3, 15, 20, 7])
s.buildTree([-1], [-1])
