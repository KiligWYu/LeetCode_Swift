//
//  #204
//  https://leetcode.com/problems/count-primes/
//

class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n >= 2 else {
            return 0
        }
        
        var isPrimes = [Bool](repeatElement(true, count: n))
        for i in 2..<n {
            if isPrimes[i] == true {
                for j in stride(from: i * 2, to: n, by: i) {
                    isPrimes[j] = false
                }
            }
        }
        
        var count = 1
        for i in stride(from: 3, to: n, by: 2) {
            count += isPrimes[i] ? 1 : 0
        }
        
        return count
    }
}
