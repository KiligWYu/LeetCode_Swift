//
//  SameTree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/9/23.
//

import XCTest

final class SameTree: XCTestCase {
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testSameTree() throws {
    let p = TreeNode(1)
    p.left = TreeNode(2)
    p.right = TreeNode(3)

    let q = TreeNode(1)
    q.left = TreeNode(2)
    q.right = TreeNode(3)

    let solution = Solution()
    XCTAssert(solution.isSameTree(p, q))
  }

  func testUnsameTree() throws {
    let p = TreeNode(1)
    p.left = TreeNode(2)
    p.right = TreeNode(1)

    let q = TreeNode(1)
    q.left = TreeNode(1)
    q.right = TreeNode(2)

    let solution = Solution()
    XCTAssertFalse(solution.isSameTree(p, q))
  }

  func testNullTree() throws {
    let solution = Solution()

    let p1: TreeNode? = nil
    let q1: TreeNode? = nil
    XCTAssert(solution.isSameTree(p1, q1))

    let p2: TreeNode? = TreeNode(1)
    let q2: TreeNode? = nil
    XCTAssertFalse(solution.isSameTree(p2, q2))
  }
}
