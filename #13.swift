//
//  #13
//  https://leetcode.com/problems/roman-to-integer/
//
//  Time Complexity: O(n)
//  Space Complexity: O(n)
//

class RomanToInteger {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var res = 0
        let arr = s.enumerated().reversed().map { (s.count - 1 - $0, $1) }
        for (i, x) in arr {
            guard let current = dict[x] else {
                fatalError("Not valid roman number.")
            }
            
            if i > 0, current < dict[arr[i - 1].1]! {
                res -= current
            } else {
                res += current
            }
        }
        
        return res
    }
}
