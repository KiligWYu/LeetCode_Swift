//
//  104_MaximumDepthOfBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/11/23.
//

import XCTest

final class MaximumDepthOfBinaryTree: XCTestCase {
  func testNil() throws {
    let root: TreeNode? = nil
    let s = Solution_104()
    XCTAssertEqual(s.maxDepth(root), 0)
  }

  func testMaximumDepth() throws {
    let root1 = TreeNode(3)
    root1.left = TreeNode(9)
    root1.right = TreeNode(20)
    root1.right?.left = TreeNode(15)
    root1.right?.right = TreeNode(7)

    let root2 = TreeNode(1)
    root2.right = TreeNode(2)

    let s = Solution_104()
    XCTAssertEqual(s.maxDepth(root1), 3)
    XCTAssertEqual(s.maxDepth(root2), 2)
  }
}
