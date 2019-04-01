//
//  #345
//  https://leetcode.com/problems/reverse-vowels-of-a-string/
//

class Solution {
    func reverseVowels(_ s: inout String) -> String {
        var left = s.startIndex, right = s.index(before: s.endIndex)
        
        while left < right {
            while left < right, !isVowels(s[left]) {
                left = s.index(after: left)
            }
            while left < right, !isVowels(s[right]) {
                right = s.index(before: right)
            }
            guard left < right else {
                break
            }
            let leftC = s[left]
            s.replaceSubrange(left..<s.index(after: left), with: "\(s[right])")
            s.replaceSubrange(right..<s.index(after: right), with: "\(leftC)")
            
            left = s.index(after: left)
            right = s.index(before: right)
        }
        
        return s
    }
    
    private func isVowels(_ c: Character) -> Bool {
        return c == "a" || c == "e" || c == "i" || c == "o" || c == "u"
    }
}
