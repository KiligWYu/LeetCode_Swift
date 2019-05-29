//
//  #448
//  https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
//

import Foundation

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        return Array(Set(1...nums.count).subtracting(nums))
    }
}
