//
//  504. Base 7
//  https://leetcode.com/problems/base-7/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import Foundation

class Solution_504 {
  func convertToBase7(_ num: Int) -> String {
    if num < 0 { return "-" + convertToBase7(-num) }
    if num < 7 { return "\(num)" }
    return convertToBase7(num / 7) + "\(num % 7)"
  }
}
