//
//  1022_SumOfRootToLeafBinaryNumbers.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/8/24.
//

import XCTest

final class SumOfRootToLeafBinaryNumbers: XCTestCase {
  func test_sumRootToLeaf() throws {
    let solution = Solution_1022()
    /*
          1
        /    \
       0      1
      / \    / \
     0   1  0   1
     */
    let root = TreeNode(1)
    root.left = TreeNode(0)
    root.right = TreeNode(1)
    root.left?.left = TreeNode(0)
    root.left?.right = TreeNode(1)
    root.right?.left = TreeNode(0)
    root.right?.right = TreeNode(1)
    XCTAssertEqual(solution.sumRootToLeaf(root), 22)
  }

  func test_sumRootToLeaf_2() throws {
    let solution = Solution_1022()
    let root = TreeNode(0)
    XCTAssertEqual(solution.sumRootToLeaf(root), 0)
  }
}
