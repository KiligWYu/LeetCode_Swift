//
//  101_SymmetricTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/10/23.
//

import XCTest

final class SymmetricTree: XCTestCase {
  func testNull() throws {
    let root: TreeNode? = nil

    let s = Solution_101()
    XCTAssert(s.isSymmetric(root))
  }

  func testSymmetric() throws {
    let root = TreeNode(1)

    root.left = TreeNode(2)
    root.left?.left = TreeNode(3)
    root.left?.right = TreeNode(4)

    root.right = TreeNode(2)
    root.right?.left = TreeNode(4)
    root.right?.right = TreeNode(3)

    let s = Solution_101()
    XCTAssert(s.isSymmetric(root))
  }

  func testUnsymmetric() throws {
    let root = TreeNode(1)

    root.left = TreeNode(2)
    root.left?.right = TreeNode(3)

    root.right = TreeNode(2)
    root.right?.right = TreeNode(3)

    let s = Solution_101()
    XCTAssertFalse(s.isSymmetric(root))
  }
}
