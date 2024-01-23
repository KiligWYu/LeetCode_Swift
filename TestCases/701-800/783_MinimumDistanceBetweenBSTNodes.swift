//
//  783_MinimumDistanceBetweenBSTNodes.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import XCTest

final class MinimumDistanceBetweenBSTNodes: XCTestCase {
  func test_minDiffInBST() throws {
    let solution = Solution_783()
    /*
         4
        / \
       2   6
      / \
     1   3
     */
    let root = TreeNode(4)
    root.left = TreeNode(2)
    root.left?.left = TreeNode(1)
    root.left?.right = TreeNode(3)
    root.right = TreeNode(6)

    XCTAssertEqual(solution.minDiffInBST(root), 1)
  }

  func test_minDiffInBST_2() throws {
    let solution = Solution_783()
    /*
          1
         / \
        0  48
           / \
          12 49
     */
    let root = TreeNode(1)
    root.left = TreeNode(0)
    root.right = TreeNode(48)
    root.right?.left = TreeNode(12)
    root.right?.right = TreeNode(49)

    XCTAssertEqual(solution.minDiffInBST(root), 1)
  }
  
  func test_minDiffInBST_3() throws {
    let solution = Solution_783()
    /*
          90
         /
        69
       / \
      49 89
       \
       52
     */
    let root = TreeNode(90)
    root.left = TreeNode(69)
    root.left?.left = TreeNode(49)
    root.left?.right = TreeNode(89)
    root.left?.left?.right = TreeNode(52)

    XCTAssertEqual(solution.minDiffInBST(root), 1)
  }
}
