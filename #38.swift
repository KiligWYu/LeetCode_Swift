//
//  #38
//  https://leetcode.com/problems/count-and-say/
//

class Solution {
    func countAndSay(_ n: Int) -> String {
        guard n > 0, n <= 30 else {
            return ""
        }
        
        if n == 1 {
            return "1"
        }
        
        var pre = countAndSay(n - 1)
        var res = ""
        var count = 0, first: Character
        while pre.count > 0 {
            first = pre[pre.startIndex]
            count = 0
            while pre.count > 0, pre[pre.startIndex] == first {
                count += 1
                pre.removeFirst()
            }
            res += "\(count)\(first)"
        }
        
        return res
    }
}
