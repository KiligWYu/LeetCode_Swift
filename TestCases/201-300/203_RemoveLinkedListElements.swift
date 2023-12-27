//
//  203_RemoveLinkedListElements.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/29/23.
//

import XCTest

final class RemoveLinkedListElements: XCTestCase {
  func testRemoveElements() throws {
    let head = [1, 2, 6, 3, 4, 5, 6].toList
    let head2: ListNode? = nil
    let head3 = [7, 7, 7, 7].toList

    let solution = Solution_203()
    XCTAssertEqual(solution.removeElements(head, 6), [1, 2, 3, 4, 5].toList)
    XCTAssertNil(solution.removeElements(head2, 1))
    XCTAssertNil(solution.removeElements(head3, 7))
  }
}
