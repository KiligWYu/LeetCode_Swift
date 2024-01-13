//
//  606_ConstructStringFromBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/13/24.
//

import XCTest

final class ConstructStringFromBinaryTree: XCTestCase {
  /*
       1
      / \
     2   3
    /
   4
      */
  func testTree2str() throws {
    let solution = Solution_606()
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.left?.left = TreeNode(4)
    root.right = TreeNode(3)
    XCTAssertEqual(solution.tree2str(root), "1(2(4))(3)")
  }

  /*
     1
    / \
   2   3
    \
     4
      */
  func testTree2str2() throws {
    let solution = Solution_606()
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.left?.right = TreeNode(4)
    root.right = TreeNode(3)
    XCTAssertEqual(solution.tree2str(root), "1(2()(4))(3)")
  }

  /*
           21
          / \
         /   \
        /     \
       7      14
      / \     / \
     1   1   2   2
    / \
   3   3
   */
  func testTree2str3() throws {
    let solution = Solution_606()
    let root = TreeNode(21)
    root.left = TreeNode(7)
    root.left?.left = TreeNode(1)
    root.left?.right = TreeNode(1)
    root.left?.left?.left = TreeNode(3)
    root.left?.left?.right = TreeNode(3)
    root.right = TreeNode(14)
    root.right?.left = TreeNode(2)
    root.right?.right = TreeNode(2)
    XCTAssertEqual(solution.tree2str(root), "21(7(1(3)(3))(1))(14(2)(2))")
  }
}
