//: ## [66. 加一](https://leetcode-cn.com/problems/plus-one/)
/*:
 给定一个由 `整数` 组成的 `非空` 数组所表示的非负整数，在该数的基础上加一。
 \
 最高位数字存放在数组的首位， 数组中每个元素只存储`单个`数字。
 \
 你可以假设除了整数 0 之外，这个整数不会以零开头。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var index = digits.count - 1

    while index >= 0 {
      if digits[index] < 9 {
        digits[index] += 1
        return digits
      }

      digits[index] = 0
      index -= 1
    }
    digits.insert(1, at: 0)
    return digits
  }
}

// Tests
let s = Solution()
s.plusOne([1, 2, 3]) == [1, 2, 4]
s.plusOne([4, 3, 2, 1]) == [4, 3, 2, 2]
s.plusOne([0]) == [1]
