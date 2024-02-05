//
//  993_CousinsInBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/5/24.
//

import XCTest

final class CousinsInBinaryTree: XCTestCase {
  func test_isCousins() throws {
    let solution = Solution_993()
    /*
         1
        / \
       2   3
      /
     4
     */
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.right = TreeNode(3)
    root.left?.left = TreeNode(4)
    XCTAssertFalse(solution.isCousins(root, 4, 3))
  }

  func test_isCousins_2() throws {
    let solution = Solution_993()
    /*
         1
        / \
       2   3
        \   \
         4   5
     */
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.right = TreeNode(3)
    root.left?.right = TreeNode(4)
    root.right?.right = TreeNode(5)
    XCTAssertTrue(solution.isCousins(root, 5, 4))
  }

  func test_isCousins_3() throws {
    let solution = Solution_993()
    /*
         1
        / \
       2   3
        \
         4
     */
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.right = TreeNode(3)
    root.left?.right = TreeNode(4)
    XCTAssertFalse(solution.isCousins(root, 2, 3))
  }
}
