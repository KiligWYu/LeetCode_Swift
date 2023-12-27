//
//  257_BinaryTreePaths.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/12/23.
//

import XCTest

final class BinaryTreePaths: XCTestCase {
  func testBinaryTreePaths() throws {
    let root: TreeNode? = nil,
        root2 = TreeNode(1),
        root3 = TreeNode(1)
    root3.left = TreeNode(2)
    root3.right = TreeNode(3)
    root3.left?.right = TreeNode(5)

    let solution = Solution_257()
    XCTAssertEqual(solution.binaryTreePaths(root), [String]())
    XCTAssertEqual(solution.binaryTreePaths(root2), ["1"])
    XCTAssertEqual(solution.binaryTreePaths(root3), ["1->2->5", "1->3"])
  }
}
