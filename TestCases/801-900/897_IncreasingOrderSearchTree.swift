//
//  897_IncreasingOrderSearchTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/30/24.
//

import XCTest

final class IncreasingOrderSearchTree: XCTestCase {
  func test_increasingBST() throws {
    let solution = Solution_897()
    /*
           5
          / \
         3   6
        / \   \
       2   4   8
      /       / \
     1       7   9
     */
    let root = TreeNode(5)
    root.left = TreeNode(3)
    root.right = TreeNode(6)
    root.left?.left = TreeNode(2)
    root.left?.right = TreeNode(4)
    root.right?.right = TreeNode(8)
    root.left?.left?.left = TreeNode(1)
    root.right?.right?.left = TreeNode(7)
    root.right?.right?.right = TreeNode(9)
    /*
     1
      \
       2
        \
         3
          \
           4
            \
             5
              \
               6
                \
                 7
                  \
                   8
                    \
                     9
     */
    let res = TreeNode(1)
    res.right = TreeNode(2)
    res.right?.right = TreeNode(3)
    res.right?.right?.right = TreeNode(4)
    res.right?.right?.right?.right = TreeNode(5)
    res.right?.right?.right?.right?.right = TreeNode(6)
    res.right?.right?.right?.right?.right?.right = TreeNode(7)
    res.right?.right?.right?.right?.right?.right?.right = TreeNode(8)
    res.right?.right?.right?.right?.right?.right?.right?.right = TreeNode(9)

    XCTAssertEqual(solution.increasingBST(root)?.inorder, res.preorder)
  }

  func test_increasingBST_2() throws {
    let solution = Solution_897()
    /*
       1
      / \
     5   7
     */
    let root = TreeNode(5)
    root.left = TreeNode(1)
    root.right = TreeNode(7)
    /*
     1
      \
       5
        \
         7
     */
    let res = TreeNode(1)
    res.right = TreeNode(5)
    res.right?.right = TreeNode(7)

    XCTAssertEqual(solution.increasingBST(root)?.inorder, res.preorder)
  }
}
