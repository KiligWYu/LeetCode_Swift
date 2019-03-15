//
//  #326
//  https://leetcode.com/problems/power-of-three/
//

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else {
            return false
        }
        
        // The highest power of 3 Integer value in a 32-bit system is 1162261467
        // The highest power of 3 Integer value in a 64-bit system is 4052555153018976267 (3^39)
        return 4052555153018976267 % n == 0
    }
}
