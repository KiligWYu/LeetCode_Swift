//
//  #1 Two Sum
//  https://leetcode.com/problems/two-sum/
//  https://github.com/soapyigu/LeetCode-Swift/blob/master/Array/TwoSum.swift
//
//  Time Complexity: O(n), Space Complexity: O(n)
//

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let j = dict[target - num], j != i {
                return [j, i]
            }
            
            dict[num] = i
        }
        
        return []
    }
}
