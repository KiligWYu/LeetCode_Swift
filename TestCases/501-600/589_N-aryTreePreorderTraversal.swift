//
//  589_N-aryTreePreorderTraversal.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import XCTest

final class NaryTreePreorderTraversal: XCTestCase {
  func testPreorder() throws {
    let solution = Solution_589()
    XCTAssertEqual(solution.preorder(nil), [])
  }

  func testPreorder1() throws {
    let solution = Solution_589()

    /*
          1
        / | \
       3  2  4
      / \
     5   6
     */
    let node1 = Node(1), node2 = Node(2), node3 = Node(3), node4 = Node(4)
    let node5 = Node(5), node6 = Node(6)
    node1.children = [node3, node2, node4]
    node3.children = [node5, node6]
    XCTAssertEqual(solution.preorder(node1), [1, 3, 5, 6, 2, 4])
  }

  func testPreorder2() throws {
    let solution = Solution_589()

    /*
           1
      /   /  \   \
     2   3    4   5
        / \   |  / \
       6   7  8  9 10
           |  |  |
           11 12 13
           |
           14
     */
    let node1 = Node(1), node2 = Node(2), node3 = Node(3), node4 = Node(4)
    let node5 = Node(5), node6 = Node(6), node7 = Node(7), node8 = Node(8)
    let node9 = Node(9), node10 = Node(10), node11 = Node(11), node12 = Node(12)
    let node13 = Node(13), node14 = Node(14)
    node1.children = [node2, node3, node4, node5]
    node3.children = [node6, node7]
    node4.children = [node8]
    node5.children = [node9, node10]
    node7.children = [node11]
    node8.children = [node12]
    node9.children = [node13]
    node11.children = [node14]
    XCTAssertEqual(solution.preorder(node1), [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10])
  }
}
