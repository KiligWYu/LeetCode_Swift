//
//  #232
//  https://leetcode.com/problems/implement-queue-using-stacks/
//

class MyQueue {
    var input = [Int](), output = [Int]()
    
    func push(_ x: Int) {
        input.append(x)
    }
    
    func pop() {
        peek()
        output.removeLast()
    }
    
    func peek() -> Int {
        if output.isEmpty {
            while !input.isEmpty {
                output.append(input.removeLast())
            }
        }
        return output.last!
    }
    
    func empty() -> Bool {
        return input.isEmpty && output.isEmpty
    }
}
