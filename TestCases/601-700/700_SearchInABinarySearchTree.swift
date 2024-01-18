//
//  700_SearchInABinarySearchTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import XCTest

final class SearchInABinarySearchTree: XCTestCase {
  func testSearchBST() throws {
    let solution = Solution_700()
    /*
         4
        / \
       2   7
      / \
     1   3
     */
    let root = TreeNode(4)
    root.left = TreeNode(2)
    root.right = TreeNode(7)
    root.left?.left = TreeNode(1)
    root.left?.right = TreeNode(3)
    XCTAssertEqual(solution.searchBST(root, 2)?.preorder, [2, 1, 3])
    XCTAssertEqual(solution.searchBST(root, 5)?.preorder, nil)
  }
}
