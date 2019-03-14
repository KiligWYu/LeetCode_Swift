//
//  #303
//  https://leetcode.com/problems/range-sum-query-immutable/
//

class NumArray {
    private var preSums = [Int]()
    
    init(_ nums: [Int]) {
        for (i, num) in nums.enumerated() {
            if i == 0 {
                preSums.append(num)
            } else {
                preSums.append(num + preSums[i - 1])
            }
        }
        
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        guard i >= 0, i <= j, j < preSums.count else {
            fatalError()
        }
        
        if i == 0 {
            return preSums[j]
        }
        
        return preSums[j] - preSums[i - 1]
    }
}
