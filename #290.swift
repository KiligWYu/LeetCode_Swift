//
//  #290
//  https://leetcode.com/problems/word-pattern/
//

class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let strs = str.split(separator: " ").map { String($0) }
        
        guard pattern.count == strs.count else {
            return false
        }
        
        var patternToWord = [Character: String]()
        
        for (i, char) in pattern.enumerated() {
            let word = strs[i]
            if let charWord = patternToWord[char] {
                if word != charWord {
                    return false
                }
            } else {
                if patternToWord.values.contains(word) {
                    return false
                } else {
                    patternToWord[char] = word
                }
            }
        }
        
        return true
    }
}
