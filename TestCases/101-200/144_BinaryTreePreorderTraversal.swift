//
//  144_BinaryTreePreorderTraversal.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/20/23.
//

import XCTest

final class BinaryTreePreorderTraversal: XCTestCase {
  func testEmptyNode() throws {
    let root: TreeNode? = nil

    let s = Solution_144()
    XCTAssertEqual(s.preorderTraversal(root), [Int]())
  }

  func testOneNode() throws {
    let root = TreeNode(1)

    let s = Solution_144()
    XCTAssertEqual(s.preorderTraversal(root), [1])
  }

  func testPreorderTraversal() throws {
    let root = TreeNode(1)
    root.right = TreeNode(2)
    root.right?.left = TreeNode(3)

    let root2 = TreeNode(3)
    root2.left = TreeNode(9)
    root2.right = TreeNode(20)
    root2.right?.left = TreeNode(15)
    root2.right?.right = TreeNode(7)

    let s = Solution_144()
    XCTAssertEqual(s.preorderTraversal(root), [1, 2, 3])
    XCTAssertEqual(s.preorderTraversal(root2), [3, 9, 20, 15, 7])
  }
}
