//
//  #350
//  https://leetcode.com/problems/intersection-of-two-arrays-ii/
//

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var frequencies = Dictionary(nums1.map { ($0, 1) }, uniquingKeysWith: +)
        var res = [Int]()
        
        for num in nums2 {
            guard let frequent = frequencies[num], frequent > 0 else {
                continue
            }
            
            frequencies[num]! = frequent - 1
            res.append(num)
        }
        
        return res
    }
}
