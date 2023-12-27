//
//  121. Best Time to Buy and Sell Stock
//  https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/15/23.
//

import Foundation

class Solution_121 {
  // Kadane 算法
  // https://zh.wikipedia.org/wiki/最大子数列问题
  func maxProfit(_ prices: [Int]) -> Int {
    var dp = 0, maxProfit = 0
    for i in 1 ..< prices.count {
      let profit = prices[i] - prices[i - 1]
      dp = max(dp + profit, profit)
      maxProfit = max(maxProfit, dp)
    }
    return maxProfit
  }
  
  /*
   func maxProfit(_ prices: [Int]) -> Int {
     var maxProfit = 0, buy = 0
    
     for i in 0..<prices.count {
       let profit = prices[i] - prices[buy]
       if profit < 0 {
         buy = i
       } else {
         maxProfit = max(maxProfit, profit)
       }
     }
    
     return maxProfit
   }
    */
  
  /*
   func maxProfit(_ prices: [Int]) -> Int {
     var maxProfit = 0

     for i in 0..<prices.count {
       for j in i + 1..<prices.count {
         maxProfit = max(profit, prices[j] - prices[i])
       }
     }
    
     return maxProfit
   }
    */
}
