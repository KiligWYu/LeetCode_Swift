//
//  412. Fizz Buzz
//  https://leetcode.com/problems/fizz-buzz/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/28/23.
//

import Foundation

class Solution_412 {
  func fizzBuzz(_ n: Int) -> [String] {
    (1 ... n).map {
      if $0 % 15 == 0 { return "FizzBuzz" }
      else if $0 % 3 == 0 { return "Fizz" }
      else if $0 % 5 == 0 { return "Buzz" }
      else { return "\($0)" }
    }
  }
}
