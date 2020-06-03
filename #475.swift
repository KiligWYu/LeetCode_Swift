//
//  #475
//  https://leetcode.com/problems/heaters/
//

import Foundation

class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var i = 0, radius = 0
        let houses = houses.sorted(), heaters = heaters.sorted()
        
        for house in houses {
            while i < heaters.count - 1, house * 2 >= heaters[i] + heaters[i + 1] {
                i += 1
            }
            
            radius = max(radius, abs(house - heaters[i]))
        }
        
        return radius
    }
}
