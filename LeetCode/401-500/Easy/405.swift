//
//  405. Convert a Number to Hexadecimal
//  https://leetcode.com/problems/convert-a-number-to-hexadecimal/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/27/23.
//

import Foundation

class Solution_405 {
  func toHex(_ num: Int) -> String {
    var res = "", num = num, count = 0
    let str = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]

    while num != 0 && count < 8 {
      res = str[num & 0xf] + res
      num >>= 4
      count += 1
    }

    return res.isEmpty ? "0" : res
  }

  /*
   func toHex(_ num: Int) -> String {
     var res = "", num = num, n = 7
     let hexs = ["a", "b", "c", "d", "e", "f"]

     if num < 0 { num = Int(UInt32.max) + num + 1 }

     while num > 0 {
       let t = Int(pow(Double(16), Double(n)))
       let d = num / t
       if d >= 10 { res += hexs[d - 10] }
       else if d >= 0 { res += "\(d)" }
       num %= t
       n -= 1
     }

     while n >= 0 { res += "0"
       n -= 1
     }
     while res.hasPrefix("0") { res.removeFirst() }

     return res.isEmpty ? "0" : res
   }
    */

  /*
   func toHex(_ num: Int) -> String {
     if num == 0 { return "0" }
     return String(format: "%2x", num).trimmingCharacters(in: .whitespaces)
   }
    */
}
