//
//  #202
//  https://leetcode.com/problems/happy-number/
//

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var sum = 0, temp = n, sums = [Int]()
        
        while sum != 1 {
            sum = 0
            while temp > 0 {
                sum += (temp % 10) * (temp % 10)
                temp /= 10
            }
            
            if sums.contains(sum) {
                return false
            }
            
            sums.append(sum)
            temp = sum
        }
        
        return true
    }
}
