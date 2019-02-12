//
//  #169
//  https://leetcode.com/problems/majority-element/
//

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var sum = 0, major = nums[0]
        
        for num in nums {
            if num == major {
                sum += 1
            } else {
                sum -= 1
            }
            
            if sum == 0 {
                major = num
                sum = 1
            }
        }
        
        return major
    }
}
