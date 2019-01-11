//
//  #26
//  https://leetcode.com/problems/remove-duplicates-from-sorted-array/
//

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var index = 0
        for num in nums where num != nums[index] {
            index += 1
            nums[index] = num
        }
        return index + 1
    }
}
