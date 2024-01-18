//
//  226_InvertBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/6/23.
//

import XCTest

final class InvertBinaryTree: XCTestCase {
  func testInvertTree() throws {
    let root = TreeNode(4)
    root.left = TreeNode(2)
    root.right = TreeNode(7)
    root.left?.left = TreeNode(1)
    root.left?.right = TreeNode(3)
    root.right?.left = TreeNode(6)
    root.right?.right = TreeNode(9)

    let root2 = TreeNode(2)
    root2.left = TreeNode(1)
    root2.right = TreeNode(3)

    let root3: TreeNode? = nil

    let solution = Solution_226()
    XCTAssertEqual(solution.invertTree(root)?.inorder, [9, 7, 6, 4, 3, 2, 1])
    XCTAssertEqual(solution.invertTree(root2)?.inorder, [3, 2, 1])
    XCTAssertNil(solution.invertTree(root3))
  }
}
