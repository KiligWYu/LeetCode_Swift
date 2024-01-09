//
//  559_MaximumDepthOfN-aryTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import XCTest

final class MaximumDepthOfNaryTree: XCTestCase {
  func testMaxDepth() throws {
    let solution = Solution_559()
    
    let node1 = Node(1)
    let node2 = Node(2)
    let node3 = Node(3)
    let node4 = Node(4)
    let node5 = Node(5)
    let node6 = Node(6)
    node1.children = [node3, node2, node4]
    node3.children = [node5, node6]
    XCTAssertEqual(solution.maxDepth(node1), 3)
    
    let node: Node? = nil
    XCTAssertEqual(solution.maxDepth(node), 0)
  }
  
  func testMaxDepth2() throws {
    let solution = Solution_559()
    
    let node1 = Node(1)
    let node2 = Node(2)
    let node3 = Node(3)
    let node4 = Node(4)
    let node5 = Node(5)
    let node6 = Node(6)
    let node7 = Node(7)
    let node8 = Node(8)
    let node9 = Node(9)
    let node10 = Node(10)
    let node11 = Node(11)
    let node12 = Node(12)
    let node13 = Node(13)
    let node14 = Node(14)
    node1.children = [node2, node3, node4, node5]
    node3.children = [node6, node7]
    node4.children = [node8]
    node5.children = [node9, node10]
    node7.children = [node11]
    node8.children = [node12]
    node9.children = [node13]
    node11.children = [node14]
    
    XCTAssertEqual(solution.maxDepth(node1), 5)
  }
}
