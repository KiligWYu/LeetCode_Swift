//
//  590_N-aryTreePostorderTraversal.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import XCTest

final class NaryTreePostorderTraversal: XCTestCase {
  func testPostorder() throws {
    let solution = Solution_590()
    XCTAssertEqual(solution.postorder(nil), [])
  }

  func testPostorder1() throws {
    let solution = Solution_590()

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
    XCTAssertEqual(solution.postorder(node1), [5, 6, 3, 2, 4, 1])
  }

  func testPostorder2() throws {
    let solution = Solution_590()

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
    XCTAssertEqual(solution.postorder(node1), [2, 6, 14, 11, 7, 3, 12, 8, 4, 13, 9, 10, 5, 1])
  }
}
