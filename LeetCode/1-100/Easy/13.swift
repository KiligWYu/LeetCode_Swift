//
//  13. Roman to Integer
//  https://leetcode.com/problems/roman-to-integer/
//  https://leetcode.wang/leetCode-13-Roman-to-Integer.html
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/1/23.
//

import Foundation

class Solution {
  func romanToInt(_ s: String) -> Int {
    let dic: [Character: Int] = [
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    ]

    let chars = Array(s)
    var res = 0
    for i in 0 ..< chars.count - 1 {
      if dic[chars[i]]! < dic[chars[i + 1]]! {
        res -= dic[chars[i]]!
      } else {
        res += dic[chars[i]]!
      }
    }

    return res + dic[chars[chars.count - 1]]!
  }
}
