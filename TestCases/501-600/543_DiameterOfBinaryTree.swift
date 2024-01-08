//
//  543_DiameterOfBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/8/24.
//

import XCTest

final class DiameterOfBinaryTree: XCTestCase {
  func testDiameterOfBinaryTree() throws {
    let solution = Solution_543()

    let root1 = TreeNode(1)
    root1.left = TreeNode(2)
    root1.right = TreeNode(3)
    root1.left?.left = TreeNode(4)
    root1.left?.right = TreeNode(5)
    XCTAssertEqual(solution.diameterOfBinaryTree(root1), 3)

    let root2 = TreeNode(1)
    root2.left = TreeNode(2)
    XCTAssertEqual(solution.diameterOfBinaryTree(root2), 1)
  }
}
