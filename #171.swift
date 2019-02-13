//
//  #171
//  https://leetcode.com/problems/excel-sheet-column-number/
//

class Solution {
    func titleToNumber(_ s: String) -> Int {
        var res = 0
        let scalarsOfA = "A".unicodeScalars
        let valueOfA = scalarsOfA[scalarsOfA.startIndex].value
        
        for char in s {
            let scalarsOfChar = String(char).unicodeScalars
            let current = Int(scalarsOfChar[scalarsOfChar.startIndex].value - valueOfA) + 1
            print(current)
            res = res * 26 + current
        }
        
        return res
    }
}
