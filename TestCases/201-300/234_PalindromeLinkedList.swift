//
//  234_PalindromeLinkedList.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/10/23.
//

import XCTest

final class PalindromeLinkedList: XCTestCase {
  func testPalindromeList() throws {
    let head: ListNode? = nil,
        head2 = ListNode(1),
        head3 = [1, 2].toList,
        head4 = [1, 2, 2, 1].toList,
        head5 = [1, 2, 3, 4, 5].toList,
        head6 = [1, 2, 3, 2, 1].toList

    let solution = Solution_234()
    XCTAssert(solution.isPalindrome(head))
    XCTAssert(solution.isPalindrome(head2))
    XCTAssertFalse(solution.isPalindrome(head3))
    XCTAssert(solution.isPalindrome(head4))
    XCTAssertFalse(solution.isPalindrome(head5))
    XCTAssert(solution.isPalindrome(head6))
  }
}
