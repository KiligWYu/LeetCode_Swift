//
//  938_RangeSumOfBST.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/2/24.
//

import XCTest

final class RangeSumOfBST: XCTestCase {
  func test_rangeSumBST() throws {
    let solution = Solution_938()
    /*
         10
        / \
       5   15
      / \   \
     3   7   18
     */
    let root = TreeNode(10)
    root.left = TreeNode(5)
    root.right = TreeNode(15)
    root.left?.left = TreeNode(3)
    root.left?.right = TreeNode(7)
    root.right?.right = TreeNode(18)
    XCTAssertEqual(solution.rangeSumBST(root, 7, 15), 32)
  }

  func test_rangeSumBST_2() throws {
    let solution = Solution_938()
    /*
            10
          /    \
         5     15
        / \    / \
       3   7  13 18
      /   /
     1   6
     */
    let root = TreeNode(10)
    root.left = TreeNode(5)
    root.right = TreeNode(15)
    root.left?.left = TreeNode(3)
    root.left?.right = TreeNode(7)
    root.right?.left = TreeNode(13)
    root.right?.right = TreeNode(18)
    root.left?.left?.left = TreeNode(1)
    root.left?.right?.left = TreeNode(6)
    XCTAssertEqual(solution.rangeSumBST(root, 6, 10), 23)
  }
}
