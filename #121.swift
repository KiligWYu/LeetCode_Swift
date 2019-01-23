//
//  #121
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
//

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
        
        var profit = 0, lowest = prices[0]
        for price in prices {
            profit = max(profit, price - lowest)
            lowest = min(lowest, price)
        }
        
        return profit
    }
}
