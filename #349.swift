//
//  #349
//  https://leetcode.com/problems/intersection-of-two-arrays/
//

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return [Int](Set(nums1).intersection(nums2))
    }
}
