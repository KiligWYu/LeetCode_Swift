//
//  #125
//  https://leetcode.com/problems/valid-palindrome/
//

func isPalindrome(_ s: String) -> Bool {
    let s = s.lowercased()
    var i = s.startIndex
    var j = s.index(before: s.endIndex)
    while j > i {
        while !s[i].isAlphanumeric, j > i {
            i = s.index(after: i)
        }
        while !s[j].isAlphanumeric, j > i {
            j = s.index(before: j)
        }
        
        if s[i] != s[j] {
            return false
        }
        
        i = s.index(after: i)
        j = s.index(before: j)
    }
    return true
}

extension Character {
    var isAlpha: Bool {
        return ("a"..."z").contains(self)
    }
    
    var isNumeric: Bool {
        return ("0"..."9").contains(self)
    }
    
    var isAlphanumeric: Bool {
        return isAlpha || isNumeric
    }
}
