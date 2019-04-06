//
//  #383
//  https://leetcode.com/problems/ransom-note/
//

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineMap = Dictionary(magazine.map { ($0, 1) }, uniquingKeysWith: +)
        
        for char in ransomNote {
            if let v = magazineMap[char], v > 0 {
                magazineMap[char]! -= 1
            } else {
                return false
            }
        }
        
        return true
    }
}
