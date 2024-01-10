//
//  563_BinaryTreeTilt.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/10/24.
//

import XCTest

final class BinaryTreeTilt: XCTestCase {
  /*
     1
    / \
   2   3
   */
  func testFindTilt1() throws {
    let solution = Solution_563()
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.right = TreeNode(3)
    XCTAssertEqual(solution.findTilt(root), 1)
  }

  /*
       4
      / \
     2   9
    / \   \
   3   5   7
   */
  func testFindTilt2() throws {
    let solution = Solution_563()
    let root = TreeNode(4)
    root.left = TreeNode(2)
    root.left?.left = TreeNode(3)
    root.left?.right = TreeNode(5)
    root.right = TreeNode(9)
    root.right?.right = TreeNode(7)
    XCTAssertEqual(solution.findTilt(root), 15)
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
  func testFindTilt3() throws {
    let solution = Solution_563()
    let root = TreeNode(21)
    root.left = TreeNode(7)
    root.left?.left = TreeNode(1)
    root.left?.right = TreeNode(1)
    root.left?.left?.left = TreeNode(3)
    root.left?.left?.right = TreeNode(3)
    root.right = TreeNode(14)
    root.right?.left = TreeNode(2)
    root.right?.right = TreeNode(2)
    XCTAssertEqual(solution.findTilt(root), 9)
  }
}
