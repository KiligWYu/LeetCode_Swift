//
//  551. Student Attendance Record I
//  https://leetcode.com/problems/student-attendance-record-i/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import Foundation

class Solution_551 {
  /*
   func checkRecord(_ s: String) -> Bool {
     s.firstRange(of: "LLL") == nil && s.ranges(of: "A").count < 2
   }
    */

  func checkRecord(_ s: String) -> Bool {
    s.ranges(of: /A.*A|LLL/).isEmpty
  }
}
