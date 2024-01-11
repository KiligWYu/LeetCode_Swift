//
//  572_SubtreeOfAnotherTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import XCTest

final class SubtreeOfAnotherTree: XCTestCase {
  func testIsSubtree() throws {
    let solution = Solution_572()

    /*
         3
        / \
       4   5
      / \
     1   2
     */
    let root1 = TreeNode(3)
    root1.left = TreeNode(4)
    root1.right = TreeNode(5)
    root1.left?.left = TreeNode(1)
    root1.left?.right = TreeNode(2)

    /*
       4
      / \
     1   2
     */
    let root2 = TreeNode(4)
    root2.left = TreeNode(1)
    root2.right = TreeNode(2)

    XCTAssertTrue(solution.isSubtree(root1, root2))
  }

  func testIsSubtree2() throws {
    let solution = Solution_572()

    /*
         3
        / \
       4   5
      / \
     1   2
        /
       0
     */
    let root1 = TreeNode(3)
    root1.left = TreeNode(4)
    root1.right = TreeNode(5)
    root1.left?.left = TreeNode(1)
    root1.left?.right = TreeNode(2)
    root1.left?.right?.left = TreeNode(0)

    /*
       4
      / \
     1   2
     */
    let root2 = TreeNode(4)
    root2.left = TreeNode(1)
    root2.right = TreeNode(2)

    XCTAssertFalse(solution.isSubtree(root1, root2))
  }

  func testIsSubtree3() throws {
    let solution = Solution_572()

    /*
         1
        / \
       2   3
     */
    let root1 = TreeNode(1)
    root1.left = TreeNode(2)
    root1.right = TreeNode(3)

    /*
       1
      /
     2
     */
    let root2 = TreeNode(1)
    root2.left = TreeNode(2)

    XCTAssertFalse(solution.isSubtree(root1, root2))
  }
}
