//: ## [36. 有效的数独](https://leetcode-cn.com/problems/valid-sudoku)
/*:
 请你判断一个 `9 x 9` 的数独是否有效。只需要 **根据以下规则**，验证已经填入的数字是否有效即可。
 1. 数字 `1-9` 在每一行只能出现一次。
 2. 数字 `1-9` 在每一列只能出现一次。
 3. 数字 `1-9` 在每一个以粗实线分隔的 `3 x 3` 宫内只能出现一次。（请参考示例图）
 \
 \
 **注意：**
 \
 一个有效的数独（部分已被填充）不一定是可解的。
 只需要根据以上规则，验证已经填入的数字是否有效即可。
 空白格用 `.` 表示。
 */
/*:
 时间复杂度：`O(n^2)`
 \
 空间复杂度：`O(n)`
 */

class Solution {
  func isValidSudoku(_ board: [[Character]]) -> Bool {
    return areRowsValid(board) && areColsValid(board) && areSubsquaresValid(board)
  }

  private func areRowsValid(_ board: [[Character]]) -> Bool {
    var existingDigits = Set<Character>()

    for i in 0..<board.count {
      existingDigits.removeAll()

      for j in 0..<board[0].count {
        if !isDigitValid(board[i][j], &existingDigits) {
          return false
        }
      }
    }

    return true
  }

  private func areColsValid(_ board: [[Character]]) -> Bool {
    var existingDigits = Set<Character>()

    for i in 0..<board[0].count {
      existingDigits.removeAll()

      for j in 0..<board.count {
        if !isDigitValid(board[j][i], &existingDigits) {
          return false
        }
      }
    }

    return true
  }

  private func areSubsquaresValid(_ board: [[Character]]) -> Bool {
    var existingDigits = Set<Character>()

    for i in stride(from: 0, to: board.count, by: 3) {
      for j in stride(from: 0, to: board[0].count, by: 3) {
        existingDigits.removeAll()

        for m in i..<i + 3 {
          for n in j..<j + 3 {
            if !isDigitValid(board[m][n], &existingDigits) {
              return false
            }
          }
        }
      }
    }

    return true
  }

  private func isDigitValid(_ digit: Character, _ set: inout Set<Character>) -> Bool {
    if digit == "." {
      return true
    }

    if set.contains(digit) {
      return false
    } else {
      set.insert(digit)
      return true
    }
  }
}

// Tests
let s = Solution()
let board: [[Character]] = [["5", "3", ".", ".", "7", ".", ".", ".", "."],
                            ["6", ".", ".", "1", "9", "5", ".", ".", "."],
                            [".", "9", "8", ".", ".", ".", ".", "6", "."],
                            ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
                            ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
                            ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
                            [".", "6", ".", ".", ".", ".", "2", "8", "."],
                            [".", ".", ".", "4", "1", "9", ".", ".", "5"],
                            [".", ".", ".", ".", "8", ".", ".", "7", "9"]]
let board2: [[Character]] = [["8", "3", ".", ".", "7", ".", ".", ".", "."],
                             ["6", ".", ".", "1", "9", "5", ".", ".", "."],
                             [".", "9", "8", ".", ".", ".", ".", "6", "."],
                             ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
                             ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
                             ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
                             [".", "6", ".", ".", ".", ".", "2", "8", "."],
                             [".", ".", ".", "4", "1", "9", ".", ".", "5"],
                             [".", ".", ".", ".", "8", ".", ".", "7", "9"]]
s.isValidSudoku(board) == true
s.isValidSudoku(board2) == false
