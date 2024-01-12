//
//  599. Minimum Index Sum of Two Lists
//  https://leetcode.com/problems/minimum-index-sum-of-two-lists/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/12/24.
//

import Foundation

class Solution_599 {
  func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    var res = [String](), leastSum: Int?

    for (index1, string) in list1.enumerated() {
      if let index2 = list2.firstIndex(of: string) {
        let sum = index1 + index2
        if leastSum == nil {
          leastSum = sum
          res.append(string)
        } else {
          if sum < leastSum! {
            leastSum = sum
            res.removeAll()
            res.append(string)
          } else if sum == leastSum {
            res.append(string)
          }
        }
      }
    }

    return res
  }
}
