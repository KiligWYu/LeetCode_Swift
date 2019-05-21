//
//  #447
//  https://leetcode.com/problems/number-of-boomerangs/
//

import Foundation

class Solution {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var num = 0
        
        for point in points {
            var dict = [Int: Int]()
            for anotherPoint in points {
                if point == anotherPoint { continue }
                
                let distance = (anotherPoint[0] - point[0]) * (anotherPoint[0] - point[0]) +
                    (anotherPoint[1] - point[1]) * (anotherPoint[1] - point[1])
                if let num = dict[distance] {
                    dict[distance] = num + 1
                } else {
                    dict[distance] = 1
                }
            }
            
            for key in dict.keys {
                num += dict[key]! * (dict[key]! - 1)
            }
        }
        
        return num
    }
}
