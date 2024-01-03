//
//  482. License Key Formatting
//  https://leetcode.com/problems/license-key-formatting/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/3/24.
//

import Foundation

class Solution_482 {
  func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
    var s = s.replacingOccurrences(of: "-", with: "").uppercased()

    if k == 1 {
      var res = s.reduce("") { $0 + "-\($1)" }
      res.removeFirst()
      return res
    }

    for index in stride(from: s.count, to: 0, by: -k) {
      if k < index {
        s.insert("-", at: s.index(s.startIndex, offsetBy: index - k))
      }
    }

    return s
  }
}
