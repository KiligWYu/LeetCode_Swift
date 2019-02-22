//
//  #258
//  https://leetcode.com/problems/add-digits/
//

class Solution {
    func addDigits(_ num: Int) -> Int {
        guard num >= 10 else {
            return num
        }
        
        let array = String(num).map { Int(String($0))! }
        let sum = array.reduce(0) { (res, num) in
            res + num
        }
        
        return addDigits(sum)
    }
}
