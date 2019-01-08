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
            if let index = dict[target - num] {
                return [i, index]
            }
            
            dict[num] = i
        }
        
        fatalError("No valid outputs")
    }
}
