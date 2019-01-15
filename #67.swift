//
//  #67
//  https://leetcode.com/problems/add-binary/
//

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = a, b = b
        var carry = 0, sum = 0
        var res = ""
        
        while a.count > 0 || b.count > 0 || carry > 0 {
            if a.count > 0 {
                sum += Int(String(a.removeLast()))!
            }
            if b.count > 0 {
                sum += Int(String(b.removeLast()))!
            }
            sum += carry
            carry = sum / 2
            res = "\(sum % 2)" + res
            sum = 0
        }
        
        return res
    }
}
