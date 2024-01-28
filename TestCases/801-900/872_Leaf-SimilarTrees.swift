//
//  872_Leaf-SimilarTrees.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/28/24.
//

import XCTest

final class LeafSimilarTrees: XCTestCase {
  func test_leafSimilar() throws {
    let solution = Solution_872()
    /*
          3                3
        /    \           /    \
       5      1         5      1
      / \    / \       / \    / \
     6   2  9   8     6   7  4   2
        / \                     / \
       7   4                   9   8
     */
    let root1 = TreeNode(3)
    root1.left = TreeNode(5)
    root1.right = TreeNode(1)
    root1.left?.left = TreeNode(6)
    root1.left?.right = TreeNode(2)
    root1.right?.left = TreeNode(9)
    root1.right?.right = TreeNode(8)
    root1.left?.right?.left = TreeNode(7)
    root1.left?.right?.right = TreeNode(4)

    let root2 = TreeNode(3)
    root2.left = TreeNode(5)
    root2.right = TreeNode(1)
    root2.left?.left = TreeNode(6)
    root2.left?.right = TreeNode(7)
    root2.right?.left = TreeNode(4)
    root2.right?.right = TreeNode(2)
    root2.right?.right?.left = TreeNode(9)
    root2.right?.right?.right = TreeNode(8)
    XCTAssertTrue(solution.leafSimilar(root1, root2))
  }

  func test_leafSimilar_2() throws {
    let solution = Solution_872()
    /*
       1       1
      / \     / \
     2   3   3   2
     */
    let root1 = TreeNode(1)
    root1.left = TreeNode(2)
    root1.right = TreeNode(3)

    let root2 = TreeNode(1)
    root2.left = TreeNode(3)
    root2.right = TreeNode(2)
    XCTAssertFalse(solution.leafSimilar(root1, root2))
  }
}
