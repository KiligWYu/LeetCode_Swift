//
//  824_GoatLatin.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/25/24.
//

import XCTest

final class GoatLatin: XCTestCase {
  func test_toGoatLatin() throws {
    let solution = Solution_824()
    XCTAssertEqual(
      solution.toGoatLatin("I speak Goat Latin"),
      "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
    )
    XCTAssertEqual(
      solution.toGoatLatin("The quick brown fox jumped over the lazy dog"),
      "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
    )
  }
}
