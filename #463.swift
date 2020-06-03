//
//  #463
//  https://leetcode.com/problems/island-perimeter/
//

import Foundation

clsss Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var island = 0, reduction = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    island += 1
                    if j < grid[i].count - 1, grid[i][j + 1] == 1 {
                        reduction += 1
                    }
                    if i < grid.count - 1, grid[i + 1][j] == 1 {
                        reduction += 1
                    }
                }
            }
        }
        
        return island * 4 - reduction * 2
    }
}
