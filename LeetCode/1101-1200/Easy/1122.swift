//
//  1122. Relative Sort Array
//  https://leetcode.com/problems/relative-sort-array/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import Foundation

class Solution_1122 {
  func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var res = [Int]()
    var dict = Dictionary(arr1.map { ($0, 1) }, uniquingKeysWith: +)
    for num in arr2 {
      res.append(contentsOf: [Int](repeating: num, count: dict[num]!))
      dict.removeValue(forKey: num)
    }
    for num in dict.keys.sorted() {
      res.append(contentsOf: [Int](repeating: num, count: dict[num]!))
    }
    return res
  }
}
