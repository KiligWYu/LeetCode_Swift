//
//  551_StudentAttendanceRecordI.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import XCTest

final class StudentAttendanceRecordI: XCTestCase {
  func testCheckRecord() throws {
    let solution = Solution_551()
    XCTAssertTrue(solution.checkRecord("PPALLP"))
    XCTAssertFalse(solution.checkRecord("PPALLL"))
    XCTAssertFalse(solution.checkRecord("PALALL"))
    XCTAssertFalse(solution.checkRecord("PPALLA"))
  }
}
