//
//  #415
//  https://leetcode.com/problems/add-strings/
//

import Foundation

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var res = "", char1: Character, char2: Character, quotient = 0
        
        for index in 1...max(num1.count, num2.count) {
            if index > num1.count {
                char1 = Character("0")
            } else {
                char1 = num1[num1.index(num1.endIndex, offsetBy: -index)]
            }
            if index > num2.count {
                char2 = Character("0")
            } else {
                char2 = num2[num2.index(num2.endIndex, offsetBy: -index)]
            }
            
            let sum = Int(String(char1))! + Int(String(char2))! + quotient
            res = "\(sum % 10)" + res
            quotient = sum / 10
        }
        
        if quotient > 0 {
            res = "\(quotient)" + res
        }
        
        return res
    }
}
