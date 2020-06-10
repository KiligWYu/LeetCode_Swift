//
//  #4.swift
//  https://leetcode.com/problems/median-of-two-sorted-arrays/
//  https://leetcode.wang/leetCode-4-Median-of-Two-Sorted-Arrays.html
//
//  Created by wy on 2020-06-10.
//

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let m = nums1.count, n = nums2.count
        if m > n {
            return findMedianSortedArrays(nums2, nums1)
        }
        
        var iMin = 0, iMax = nums1.count
        while iMin <= iMax {
            let i = (iMin + iMax) / 2
            let j = (m + n + 1) / 2 - i
            
            if j != 0, i != m, nums2[j - 1] > nums1[i] {
                iMin = i + 1
            } else if i != 0, j != n, nums1[i - 1] > nums2[j] {
                iMax = i - 1
            } else {
                var maxLeft = 0
                if i == 0 { maxLeft = nums2[j - 1] }
                else if j == 0 { maxLeft = nums1[i - 1] }
                else { maxLeft = max(nums1[i - 1], nums2[j - 1]) }
                
                if (m + n) % 2 == 1 { return Double(maxLeft) }
                
                var minRight = 0
                if i == m { minRight = nums2[j] }
                else if j == n { minRight = nums1[i] }
                else { minRight = min(nums2[j], nums1[i]) }
                
                return Double(maxLeft + minRight) / 2
            }
        }
        
        return 0
    }
}
