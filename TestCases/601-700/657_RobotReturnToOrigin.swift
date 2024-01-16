//
//  657_RobotReturnToOrigin.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import XCTest

final class RobotReturnToOrigin: XCTestCase {
  func testJudgeCircle() throws {
    let solution = Solution_657()
    XCTAssertTrue(solution.judgeCircle("UD"))
    XCTAssertFalse(solution.judgeCircle("LL"))
    XCTAssertFalse(solution.judgeCircle("LDRRLRUULR"))
  }
}
