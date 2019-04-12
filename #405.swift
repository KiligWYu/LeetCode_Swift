//
//  #405
//  https://leetcode.com/problems/convert-a-number-to-hexadecimal/
//

import Foundation

class Solution {
    func test(_ num: Int) -> String {
        if num == 0 {
            return "0"
        }
        
        let map = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
        var result = ""
        var num = num
        
        for _ in 0..<8 {
            if num == 0 {
                break
            }
            result = map[num & 15] + result
            num >>= 4
        }
        
        return result
    }
}
