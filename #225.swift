//
//  #225
//  https://leetcode.com/problems/implement-stack-using-queues/
//

class MyStack {
    private var queue = [Int]()
    
    func push(_ x: Int) {
        queue.insert(x, at: 0)
    }
    
    func pop() -> Int? {
        return queue.count > 0 ? queue.removeFirst() : nil
    }
    
    func top() -> Int? {
        return queue.first
    }
    
    func empty() -> Bool {
        return queue.isEmpty
    }
}
