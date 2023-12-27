//
//  190. Reverse Bits
//  https://leetcode.com/problems/reverse-bits/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/26/23.
//

import Foundation

class Solution_190 {
  // https://leetcode.wang/leetcode-190-Reverse-Bits.html
  func reverseBits(_ n: Int) -> Int {
    var res = 0, count = 0, n = n
    while count < 32 {
      res <<= 1 // res 左移一位空出位置
      res |= (n & 1) // 得到的最低位加过来
      n >>= 1 // 原数字右移一位去掉已经处理过的最低位
      count += 1
    }
    return res
  }
}
