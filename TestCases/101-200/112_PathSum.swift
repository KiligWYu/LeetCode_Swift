//
//  112_PathSum.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/14/23.
//

import XCTest

final class PathSum: XCTestCase {
  func testNil() throws {
    let s = Solution_112()
    XCTAssertFalse(s.hasPathSum(nil, 0))
  }

  func testTargetSum() throws {
    let root1 = TreeNode(5)
    root1.left = TreeNode(4)
    root1.right = TreeNode(8)
    root1.left?.left = TreeNode(11)
    root1.right?.left = TreeNode(13)
    root1.right?.right = TreeNode(4)
    root1.left?.left?.left = TreeNode(7)
    root1.left?.left?.right = TreeNode(2)
    root1.right?.right?.right = TreeNode(1)

    let root2 = TreeNode(1)
    root2.left = TreeNode(2)
    root2.right = TreeNode(3)

    let s = Solution_112()
    XCTAssert(s.hasPathSum(root1, 22))
    XCTAssertFalse(s.hasPathSum(root2, 5))
  }
}
