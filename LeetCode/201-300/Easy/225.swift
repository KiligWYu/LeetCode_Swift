//
//  225. Implement Stack using Queues
//  https://leetcode.com/problems/implement-stack-using-queues/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/5/23.
//

import Foundation

class MyStack_225 {
  private var queue = [Int]()
  
  init() {}
    
  func push(_ x: Int) {
    queue.append(x)
  }
    
  func pop() -> Int {
    queue.removeLast()
  }
    
  func top() -> Int {
    queue.last!
  }
    
  func empty() -> Bool {
    queue.isEmpty
  }
}
