//
//  #155
//  https://leetcode.com/problems/min-stack/
//

class MinStack {
    private var array: Array<Int>
    
    init() {
        array = [Int]()
    }
    
    func push(_ x: Int) {
        array.append(x)
    }
    
    func pop() {
        array.removeLast()
    }
    
    func top() -> Int? {
        return array.last
    }
    
    func getMin() -> Int? {
        return array.min()
    }
}
