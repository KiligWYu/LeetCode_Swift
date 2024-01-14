//
//  617_MergeTwoBinaryTrees.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/14/24.
//

import XCTest

final class MergeTwoBinaryTrees: XCTestCase {
  /*
   1       1          2
          /   ===>   /
         2          2
   */
  func testMergeTrees() throws {
    let solution = Solution_617()

    let root1 = TreeNode(1)
    let root2 = TreeNode(1)
    root2.left = TreeNode(2)

    let root = TreeNode(2)
    root.left = TreeNode(2)

    XCTAssertEqual(solution.mergeTrees(root1, root2)?.inOrder, root.inOrder)
  }

  /*
       1        2                3
      / \      / \              / \
     3   2    1   3    ===>    4   5
    /          \   \          / \   \
   5            4   7        5   4   7
   */
  func testMergeTrees2() throws {
    let solution = Solution_617()

    let root1 = TreeNode(1)
    root1.left = TreeNode(3)
    root1.left?.left = TreeNode(5)
    root1.right = TreeNode(2)

    let root2 = TreeNode(2)
    root2.left = TreeNode(1)
    root2.left?.right = TreeNode(4)
    root2.right = TreeNode(3)
    root2.right?.right = TreeNode(7)

    let root = TreeNode(3)
    root.left = TreeNode(4)
    root.left?.left = TreeNode(5)
    root.left?.right = TreeNode(4)
    root.right = TreeNode(5)
    root.right?.right = TreeNode(7)

    XCTAssertEqual(solution.mergeTrees(root1, root2)?.inOrder, root.inOrder)
  }
}
