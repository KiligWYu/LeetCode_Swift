//
//  #412
//  https://leetcode.com/problems/fizz-buzz/
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    guard n > 0 else {
        return []
    }
    
    var res = [String]()
    
    for i in 1...n {
        if i % 3 == 0, i % 5 == 0 {
            res.append("FizzBuzz")
        } else if i % 3 == 0 {
            res.append("Fizz")
        } else if i % 5 == 0 {
            res.append("Buzz")
        } else {
            res.append("\(i)")
        }
    }
    
    return res
}
