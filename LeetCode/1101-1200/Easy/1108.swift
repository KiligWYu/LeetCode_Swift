//
//  1108. Defanging an IP Address
//  https://leetcode.com/problems/defanging-an-ip-address/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import Foundation

class Solution_1108 {
  func defangIPaddr(_ address: String) -> String {
    address.replacingOccurrences(of: ".", with: "[.]")
  }
}
