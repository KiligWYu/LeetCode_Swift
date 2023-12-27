//
//  145_BinaryTreePostorderTraversal.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/21/23.
//

import XCTest

final class BinaryTreePostorderTraversal: XCTestCase {
  func testEmptyTree() throws {
    let root: TreeNode? = nil

    let s = Solution_145()
    XCTAssertEqual(s.postorderTraversal(root), [Int]())
  }

  func testPostorderTraversal() throws {
    let root = TreeNode(1)
    root.right = TreeNode(2)
    root.right?.left = TreeNode(3)

    let root2 = TreeNode(1)
    root2.left = TreeNode(2)
    root2.right = TreeNode(3)
    root2.left?.left = TreeNode(4)
    root2.left?.right = TreeNode(5)

    /*
              15
             /   \
            /     \
           /       \
          7         14
         / \        / \
        /   \      /   \
       3     6    10    13
      / \   / \   / \   / \
     1   2 4   5 8   9 11  12
      */

    let root3 = TreeNode(15)
    root3.left = TreeNode(7)
    root3.right = TreeNode(14)
    root3.left?.left = TreeNode(3)
    root3.left?.right = TreeNode(6)
    root3.right?.left = TreeNode(10)
    root3.right?.right = TreeNode(13)
    root3.left?.left?.left = TreeNode(1)
    root3.left?.left?.right = TreeNode(2)
    root3.left?.right?.left = TreeNode(4)
    root3.left?.right?.right = TreeNode(5)
    root3.right?.left?.left = TreeNode(8)
    root3.right?.left?.right = TreeNode(9)
    root3.right?.right?.left = TreeNode(11)
    root3.right?.right?.right = TreeNode(12)

    let s = Solution_145()
    XCTAssertEqual(s.postorderTraversal(root), [3, 2, 1])
    XCTAssertEqual(s.postorderTraversal(root2), [4, 5, 2, 3, 1])
    XCTAssertEqual(s.postorderTraversal(root3), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
  }
}
