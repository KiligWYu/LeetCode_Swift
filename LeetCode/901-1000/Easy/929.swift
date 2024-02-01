//
//  929. Unique Email Addresses
//  https://leetcode.com/problems/unique-email-addresses/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/1/24.
//

import Foundation

class Solution_929 {
  func numUniqueEmails(_ emails: [String]) -> Int {
    Set(emails.map {
      let parts = $0.split(separator: "@")
      return parts[0]
        .replacing(/[+].*/, with: "")
        .replacingOccurrences(of: ".", with: "")
        + "@" + parts[1]
    }).count
  }
}
