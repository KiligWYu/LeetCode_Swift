//
//  #168
//  https://leetcode.com/problems/excel-sheet-column-title/
//

class Solution {
    func convertToTittle(_ n: Int) -> String {
        var res = ""
        var n = n
        while n > 0 {
            let chr = Character(UnicodeScalar(65 + (n - 1) % 26)!)
            res = String(chr) + res
            n = (n - 1) / 26
        }
        return res
    }
}
