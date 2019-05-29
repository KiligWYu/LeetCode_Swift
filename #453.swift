//
//  #453
//  https://leetcode.com/problems/minimum-moves-to-equal-array-elements/
//

import Foundation

class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        let min = nums.min()!
        return nums.reduce(0) { $0 + $1 - min }
    }
}
