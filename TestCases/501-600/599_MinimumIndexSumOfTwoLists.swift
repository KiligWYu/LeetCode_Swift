//
//  599_MinimumIndexSumOfTwoLists.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/12/24.
//

import XCTest

final class MinimumIndexSumOfTwoLists: XCTestCase {
  func testFindRestaurant() throws {
    let solution = Solution_599()
    XCTAssertEqual(
      Set(solution.findRestaurant(
        ["Shogun", "Tapioca Express", "Burger King", "KFC"],
        ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
      )),
      Set(["Shogun"])
    )
    XCTAssertEqual(
      Set(solution.findRestaurant(
        ["Shogun", "Tapioca Express", "Burger King", "KFC"],
        ["KFC", "Shogun", "Burger King"]
      )),
      Set(["Shogun"])
    )
    XCTAssertEqual(
      Set(solution.findRestaurant(
        ["happy", "sad", "good"],
        ["sad", "happy", "good"]
      )),
      Set(["sad", "happy"])
    )
  }
}
