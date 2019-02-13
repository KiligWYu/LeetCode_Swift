//
//  #172
//  https://leetcode.com/problems/factorial-trailing-zeroes/
//

class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var n = n, res = 0
        while n > 0 {
            n /= 5
            res += n
        }
        return res
    }
}
