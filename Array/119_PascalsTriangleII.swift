//
//  119_PascalsTriangleII.swift
//  
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2022/1/6.
//

//: ## [119. 杨辉三角 II](https://leetcode-cn.com/problems/pascals-triangle-ii/)
/*:
 给定一个非负索引 `rowIndex`，返回「杨辉三角」的第 `rowIndex` 行。
 \
 在「杨辉三角」中，每个数是它左上方和右上方的数的和。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(n)`
 */

class Solution {
  func getRow(_ rowIndex: Int) -> [Int] {
    var temp = 1
    var res = [Int]()
    for i in 0...rowIndex {
      res.append(temp)
      temp = temp * (rowIndex - i)/(i + 1)
    }
    return res
  }
}

/*:
 **组合公式 C(n,i) = n!/(i!*(n-i)!)**
 \
 **则第 (i+1) 项是第 i 项的倍数 = (n-i)/(i+1)**
 */

// Tests
let s = Solution()
s.getRow(3) == [1,3,3,1]
s.getRow(0) == [1]
s.getRow(1) == [1, 1]
