//
//  637_AverageOfLevelsInBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/14/24.
//

import XCTest

final class AverageOfLevelsInBinaryTree: XCTestCase {
  func testAverageOfLevels() throws {
    let solution = Solution_637()

    let root: TreeNode? = nil
    XCTAssertEqual(solution.averageOfLevels(root), [])
  }

  /*
     3
     / \
   9   20
       / \
      15  7
   */
  func testAverageOfLevels1() throws {
    let solution = Solution_637()

    let root = TreeNode(3)
    root.left = TreeNode(9)
    root.right = TreeNode(20)
    root.right?.left = TreeNode(15)
    root.right?.right = TreeNode(7)

    XCTAssertEqual(solution.averageOfLevels(root), [3, 14.5, 11])
  }

  /*
        3
       / \
      9   20
     / \
    15  7
   */
  func testAverageOfLevels2() throws {
    let solution = Solution_637()

    let root = TreeNode(3)
    root.left = TreeNode(9)
    root.right = TreeNode(20)
    root.left?.left = TreeNode(15)
    root.left?.right = TreeNode(7)

    XCTAssertEqual(solution.averageOfLevels(root), [3, 14.5, 11])
  }
}
