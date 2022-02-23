//: ## [56. 合并区间](https://leetcode-cn.com/problems/merge-intervals/)
/*:
 以数组 `intervals` 表示若干个区间的集合，其中单个区间为 `intervals[i] = [starti, endi]`。请你合并所有重叠的区间，并返回一个不重叠的区间数组，该数组需恰好覆盖输入中的所有区间。
 */
/*:
 时间复杂度：O(nlogn)
 空间复杂度：O(n)
 */

class Solution {
  func merge(_ intervals: [[Int]]) -> [[Int]] {
    var result = [[Int]]()

    let intervals = intervals.sorted {
      if $0[0] != $1[0] {
        return $0[0] < $1[0]
      } else {
        return $0[1] < $1[1]
      }
    }

    for interval in intervals {
      guard let last = result.last else {
        result.append(interval)
        continue
      }

      if last[1] < interval[0] {
        result.append(interval)
      } else {
        result[result.count - 1][1] = max(last[1], interval[1])
      }
    }

    return result
  }
}

// Tests
let s = Solution()
s.merge([[1, 3], [2, 6], [8, 10], [15, 18]]) == [[1, 6], [8, 10], [15, 18]]
s.merge([[1, 4], [4, 5]]) == [[1, 5]]
