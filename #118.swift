//
//  #118
//  https://leetcode.com/problems/pascals-triangle/
//

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows >= 0 else {
            fatalError("numRows must be a non-negative integer")
        }
        
        var res = [[Int]]()
        var last = res.last
        for _ in 0..<numRows {
            var curr = [1]
            if last != nil {
                for index in 0..<last!.count - 1 {
                    curr.append(last![index] + last![index + 1])
                }
                curr.append(1)
            }
            
            res.append(curr)
            last = res.last!
        }
        
        return res
    }
}
