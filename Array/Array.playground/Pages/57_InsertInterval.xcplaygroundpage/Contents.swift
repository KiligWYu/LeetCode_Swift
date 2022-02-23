//: ## [57. 插入区间](https://leetcode-cn.com/problems/insert-interval/)
/*:
 给你一个 **无重叠的**，按照区间起始端点排序的区间列表。
 \
 在列表中插入一个新的区间，你需要确保列表中的区间仍然有序且不重叠（如果有必要的话，可以合并区间）。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    var index = 0
    var result = [[Int]]()
    var tempInterval = newInterval

    while index < intervals.count && newInterval[0] > intervals[index][1] {
      result.append(intervals[index])
      index += 1
    }

    while index < intervals.count && newInterval[1] >= intervals[index][0] {
      let minStart = min(tempInterval[0], intervals[index][0])
      let maxEnd = max(tempInterval[1], intervals[index][1])
      tempInterval = [minStart, maxEnd]
      index += 1
    }
    result.append(tempInterval)

    for i in index ..< intervals.count {
      result.append(intervals[i])
    }

    return result
  }
}

// Tests
let s = Solution()
s.insert([[1, 3], [6, 9]], [2, 5]) == [[1, 5], [6, 9]]
s.insert([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8]) == [[1, 2], [3, 10], [12, 16]]
s.insert([], [5, 7]) == [[5, 7]]
s.insert([[1, 5]], [2, 3]) == [[1, 5]]
s.insert([[1, 5]], [2, 7]) == [[1, 7]]
