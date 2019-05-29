//
//  #455
//  https://leetcode.com/problems/assign-cookies/
//

import Foundation

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var g = g, s = s
        var res = 0
        
        while g.count > 0, s.count > 0 {
            let gMin = g.min()!, sMin = s.min()!
            if gMin <= sMin {
                res += 1
                g.remove(at: g.firstIndex(of: gMin)!)
                s.remove(at: s.firstIndex(of: sMin)!)
            } else {
                s.remove(at: s.firstIndex(of: sMin)!)
            }
        }
        
        return res
    }
}
