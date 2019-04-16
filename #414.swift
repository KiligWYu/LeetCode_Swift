//
//  #414
//  https://leetcode.com/problems/third-maximum-number/
//

import Foundation

func thirdMax(_ nums: [Int]) -> Int {
    var set: Set<Int> = []
    
    for num in nums {
        set.insert(num)
        if set.count > 3 {
            set.remove(set.min()!)
        }
    }
    
    return set.count < 3 ? set.max()! : set.min()!
}
