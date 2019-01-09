//
//  #14
//  https://leetcode.com/problems/longest-common-prefix/
//

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var lcp = strs.first ?? ""
        for str in strs.dropFirst() {
            while !str.hasPrefix(lcp) {
                lcp.removeLast()
            }
        }
        return lcp
    }
}
