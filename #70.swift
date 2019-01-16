//
//  #70
//  https://leetcode.com/problems/climbing-stairs/
//

class Solution {
    func climbStairs(_ n: Int) -> Int {
        var steps = [Int](repeating: 0, count: n + 1)
        
        func helper(_ n: Int) -> Int {
            if n < 0 {
                return 0
            }
            if n == 0 {
                return 1
            }
            if steps[n] != 0 {
                return steps[n]
            }
            steps[n] = helper(n - 1) + helper(n - 2)
            return steps[n]
        }
        
        return helper(n)
    }
}
