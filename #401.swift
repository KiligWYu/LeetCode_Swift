//
//  #401
//  https://leetcode.com/problems/binary-watch/
//

import Foundation

class Solution {
    func readBinaryWatch(_ nums: Int) -> [String] {
        func countBitSet(_ num: Int) -> Int {
            let bits = MemoryLayout<Int>.size * 8
            var cnt: Int = 0
            var mask: Int = 1
            for _ in 0...bits {
                if num & mask != 0 {
                    cnt += 1
                }
                mask <<= 1
            }
            return cnt
        }
        
        var res = [String]()
        
        for h in 0..<12 {
            for m in 0..<60 {
                if countBitSet(h * 64 + m) == nums {
                    res.append("\(h):\(String(format: "%02d", m))")
                }
            }
        }
        
        return res
    }
}
