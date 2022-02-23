//: ## [3. 无重复字符的最长子串](https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/)
/*:
 给定一个字符串 `s` ，请你找出其中不含有重复字符的 **最长子串** 的长度。
 */
/*:
 时间复杂度：`O(n)`
\
 空间复杂度：`O(n)`
 */

class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    var maxLen = 0, startIdx = 0, charToPos = [Character: Int]()
    let sChars = Array(s)

    for (i, char) in sChars.enumerated() {
      if let pos = charToPos[char] {
        startIdx = max(startIdx, pos)
      }
      charToPos[char] = i + 1
      maxLen = max(maxLen, i - startIdx + 1)
    }

    return maxLen
  }
}

// Tests
let solution = Solution()
solution.lengthOfLongestSubstring("abcabcbb") == 3
solution.lengthOfLongestSubstring("bbbbb") == 1
solution.lengthOfLongestSubstring("pwwkew") == 3
