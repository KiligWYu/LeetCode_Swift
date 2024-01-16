//
//  671_SecondMinimumNodeInABinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import XCTest

final class SecondMinimumNodeInABinaryTree: XCTestCase {
  /*
     2
    / \
   2   5
      / \
     5   7
   */
  func testFindSecondMinimumValue() throws {
    let solution = Solution_671()
    let root = TreeNode(2)
    root.left = TreeNode(2)
    root.right = TreeNode(5)
    root.right?.left = TreeNode(5)
    root.right?.right = TreeNode(7)
    XCTAssertEqual(solution.findSecondMinimumValue(root), 5)
  }

  /*
     2
    / \
   2   2
   */
  func testFindSecondMinimumValue2() throws {
    let solution = Solution_671()
    let root = TreeNode(2)
    root.left = TreeNode(2)
    root.right = TreeNode(2)
    XCTAssertEqual(solution.findSecondMinimumValue(root), -1)
  }
}
