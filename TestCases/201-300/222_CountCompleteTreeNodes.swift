//
//  222_CountCompleteTreeNodes.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/4/23.
//

import XCTest

final class CountCompleteTreeNodes: XCTestCase {
  func testCountNodes() throws {
    let root = TreeNode(1),
        root2: TreeNode? = nil,
        root3 = TreeNode(1)
    root3.left = TreeNode(2)
    root3.left?.left = TreeNode(4)
    root3.left?.right = TreeNode(5)
    root3.right = TreeNode(3)
    root3.right?.left = TreeNode(6)

    let solution = Solution_222()
    XCTAssertEqual(solution.countNodes(root), 1)
    XCTAssertEqual(solution.countNodes(root2), 0)
    XCTAssertEqual(solution.countNodes(root3), 6)
  }
}
