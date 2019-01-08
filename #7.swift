//
//  #7 Reverse Integer
//  https://leetcode.com/problems/reverse-integer/
//  https://github.com/soapyigu/LeetCode-Swift/blob/master/Math/ReverseInteger.swift
//
//  Time Complexity: O(n), Space Complexity: O(1)
//

class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        var x = x, result = 0
        while x != 0 {
            result *= 10
            if result > Int(Int32.max) || result < Int(Int32.min) {
                return 0
            }
            result += (x % 10)
            x /= 10
        }
        return result
    }
}
