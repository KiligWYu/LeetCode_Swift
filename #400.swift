//
//  #400
//  https://leetcode.com/problems/nth-digit/
//

class Solution {
    func findHthDigit(_ n: Int) -> Int {
        if n < 10 {
            return n
        }
        
        var num = 9, length = 1, n = n
        
        while n > num * length {
            n -= num * length
            num *= 10
            length += 1
        }
        
        num /= 10
        num = num + n / length + n % length
        
        let s = "\(num)"
        let res = s[s.index(s.endIndex, offsetBy: -n % length - 1)]
        
        return Int("\(res)")!
    }
}
