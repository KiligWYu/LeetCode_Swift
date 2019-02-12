//
//  #167
//  https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
//

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var begin = 0, end = numbers.count - 1
        
        while begin < end {
            if numbers[begin] + numbers[end] == target {
                return [begin + 1, end + 1]
            } else if numbers[begin] + numbers[end] < target {
                begin += 1
            } else {
                end -= 1
            }
        }
        
        return [Int]()
    }
}
