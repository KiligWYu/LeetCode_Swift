//
//  530_MinimumAbsoluteDifferenceInBST.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/7/24.
//

import XCTest

final class MinimumAbsoluteDifferenceInBST: XCTestCase {
  func testgetMiniumDifference() throws {
    let solution = Solution_530()
    let root1 = TreeNode(4)
    root1.left = TreeNode(2)
    root1.left?.left = TreeNode(1)
    root1.left?.right = TreeNode(3)
    root1.right = TreeNode(6)
    XCTAssertEqual(solution.getMinimumDifference(root1), 1)

    let root2 = TreeNode(1)
    root2.left = TreeNode(0)
    root2.right = TreeNode(48)
    root2.right?.left = TreeNode(12)
    root2.right?.right = TreeNode(49)
    XCTAssertEqual(solution.getMinimumDifference(root2), 1)
  }
}
