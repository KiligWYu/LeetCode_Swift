//
//  404_SumOfLeftLeaves.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/26/23.
//

import XCTest

final class SumOfLeftLeaves: XCTestCase {
  func testSumOfLeftLeaves() throws {
    let solution = Solution_404()

    let root = TreeNode(3)
    root.left = TreeNode(9)
    root.right = TreeNode(20)
    root.right?.left = TreeNode(15)
    root.right?.right = TreeNode(7)
    XCTAssertEqual(solution.sumOfLeftLeaves(root), 24)

    let root2 = TreeNode(1)
    XCTAssertEqual(solution.sumOfLeftLeaves(root2), 0)
  }
}
