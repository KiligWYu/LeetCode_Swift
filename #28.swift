//
//  #28
//  https://leetcode.com/problems/implement-strstr/
//

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count > 0 else {
            return 0
        }
        guard haystack.count >= needle.count else {
            return -1
        }
        
        for i in 0...haystack.count - needle.count {
            let index = haystack.index(haystack.startIndex, offsetBy: i)
            let endIndex = haystack.index(index, offsetBy: needle.count)
            if haystack[index..<endIndex] == needle {
                return i
            }
        }
        
        return -1
    }
}
