//
//  111_MinimumDepthOfBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/13/23.
//

import XCTest

final class MinimumDepthOfBinaryTree: XCTestCase {
  func testNil() throws {
    let s = Solution_111()
    XCTAssertEqual(s.minDepth(nil), 0)
  }

  func testMinDepth() throws {
    let root1 = TreeNode(3)
    root1.left = TreeNode(9)
    root1.right = TreeNode(20)
    root1.right?.left = TreeNode(15)
    root1.right?.right = TreeNode(7)

    let root2 = TreeNode(2)
    root2.right = TreeNode(3)
    root2.right?.right = TreeNode(4)
    root2.right?.right?.right = TreeNode(5)
    root2.right?.right?.right?.right = TreeNode(6)

    let s = Solution_111()
    XCTAssertEqual(s.minDepth(root1), 2)
    XCTAssertEqual(s.minDepth(root2), 5)
  }
}
