//
//  #20
//  https://leetcode.com/problems/valid-parentheses/
//

class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else {
            return false
        }
        var s = s
        while s.count > 0 {
            let first = s.removeFirst()
            let last = s.removeLast()
            if (first == "(" && last != ")") ||
                (first == "[" && last != "]") ||
                (first == "{" && last != "}") {
                return false
            }
        }
        return true
    }
    
    func isValid_2(_ s: String) -> Bool {
        var stack = [Character]()
        for char in s {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else if char == ")" {
                guard stack.count != 0 && stack.removeLast() == "(" else {
                    return false
                }
            } else if char == "]" {
                guard stack.count != 0 && stack.removeLast() == "[" else {
                    return false
                }
            } else if char == "}" {
                guard stack.count != 0 && stack.removeLast() == "{" else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}
