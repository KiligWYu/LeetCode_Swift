//
//  653_TwoSumIV-InputIsABST.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import XCTest

final class TwoSumIVInputIsABST: XCTestCase {
  /*
       5
      / \
     3   6
    / \   \
   2   4   7
   */
  func testFindTarget() throws {
    let solution = Solution_653()
    let root = TreeNode(5)
    root.left = TreeNode(3)
    root.left?.left = TreeNode(2)
    root.left?.right = TreeNode(4)
    root.right = TreeNode(6)
    root.right?.right = TreeNode(7)
    XCTAssertTrue(solution.findTarget(root, 9))
    XCTAssertFalse(solution.findTarget(root, 28))
  }
}
