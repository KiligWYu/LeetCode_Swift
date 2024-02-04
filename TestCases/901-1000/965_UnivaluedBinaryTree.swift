//
//  965_UnivaluedBinaryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import XCTest

final class UnivaluedBinaryTree: XCTestCase {
  func test_isUnivalTree() throws {
    let solution = Solution_965()
    /*
         1
        / \
       1   1
      / \   \
     1   1   1
     */
    let root = TreeNode(1)
    root.left = TreeNode(1)
    root.right = TreeNode(1)
    root.left?.left = TreeNode(1)
    root.left?.right = TreeNode(1)
    root.right?.right = TreeNode(1)
    XCTAssertTrue(solution.isUnivalTree(root))
  }
  
  func test_isUnivalTree_2() throws {
    let solution = Solution_965()
    /*
         2
        / \
       2   2
      / \
     5   2
     */
    let root = TreeNode(2)
    root.left = TreeNode(2)
    root.right = TreeNode(2)
    root.left?.left = TreeNode(5)
    root.left?.right = TreeNode(2)
    XCTAssertFalse(solution.isUnivalTree(root))
  }
}
