//
//  #119
//  https://leetcode.com/problems/pascals-triangle-ii/
//

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        guard rowIndex >= 0, rowIndex <= 33 else {
            fatalError("rowIndex >= 0 && rowIndex <= 33")
        }
        
        if rowIndex == 0 {
            return [1]
        }
        
        let last = getRow(rowIndex - 1)
        var res = [1]
        for i in 0..<last.count - 1 {
            res.append(last[i] + last[i + 1])
        }
        res.append(1)
        
        return res
    }
}
