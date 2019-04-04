//
//  #367
//  https://leetcode.com/problems/valid-perfect-square/
//

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var step = 1, sum = 1
        
        while sum < num {
            step += 2
            sum += step
        }
        
        return sum == num
    }
}
