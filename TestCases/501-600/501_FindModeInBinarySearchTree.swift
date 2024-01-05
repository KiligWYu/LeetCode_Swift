//
//  501_FindModeInBinarySearchTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/5/24.
//

import XCTest

final class FindModeInBinarySearchTree: XCTestCase {
  func testFindMode() throws {
    let solution = Solution_501()
    
    let root1 = TreeNode(1)
    root1.right = TreeNode(2)
    root1.right?.left = TreeNode(2)
    XCTAssertEqual(solution.findMode(root1), [2])
    
    let root2 = TreeNode(0)
    XCTAssertEqual(solution.findMode(root2), [0])
  }
}
