//
//  258. Add Digits
//  https://leetcode.com/problems/add-digits/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/13/23.
//

import Foundation

// https://zh.wikipedia.org/wiki/數根
class Solution_258 {
  func addDigits(_ num: Int) -> Int {
    (num - 1) % 9 + 1
  }

  /*
   func addDigits(_ num: Int) -> Int {
     var res = num, num = num
     while num >= 10 {
       res = 0

       repeat {
         res += num % 10
         num /= 10
       } while num > 0

       num = res
     }
     return res
   }
    */
}
