//
//  110_BalancedBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/12/23.
//

import XCTest

final class BalancedBinaryTree: XCTestCase {
  func testNil() throws {
    let root: TreeNode? = nil

    let s = Solution_110()
    XCTAssert(s.isBalanced(root))
  }

  func testBalancedBinaryTree() throws {
    let root = TreeNode(3)
    root.left = TreeNode(9)
    root.right = TreeNode(20)
    root.right?.left = TreeNode(15)
    root.right?.right = TreeNode(7)

    let s = Solution_110()
    XCTAssert(s.isBalanced(root))
  }

  func testUnbalancedBinaryTree() throws {
    let root = TreeNode(1)
    root.left = TreeNode(2)
    root.right = TreeNode(2)
    root.left?.left = TreeNode(3)
    root.left?.right = TreeNode(3)
    root.left?.left?.left = TreeNode(4)
    root.left?.left?.right = TreeNode(4)

    let s = Solution_110()
    XCTAssertFalse(s.isBalanced(root))
  }
}
