//
//  #122.swift
//  https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
//

class Solution {
    func maxProfitII(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var max = 0
        
        for i in 1..<prices.count where prices[i] > prices[i - 1] {
            max += prices[i] - prices[i - 1]
        }
        return max
    }
}
