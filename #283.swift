//
//  #283.swift
//  
//
//  Created by wy on 2019-03-11.
//

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        nums = nums.filter { $0 != 0 } + nums.filter { $0 == 0 }
    }
}


class Solution_2 {
    func moveZeroes(_ nums: inout [Int]) {
        var idx = 0
        
        for val in nums {
            if val != 0 {
                nums[idx] = val
                idx += 1
            }
        }
        
        while idx < nums.count {
            nums[idx] = 0
            idx += 1
        }
    }
}
