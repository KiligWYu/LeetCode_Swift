//
//  232. Implement Queue using Stacks
//  https://leetcode.com/problems/implement-queue-using-stacks/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/9/23.
//

import Foundation

class MyQueue_232 {
  var storage = [Int]()

  init() {}

  func push(_ x: Int) {
    storage.append(x)
  }

  func pop() -> Int {
    storage.removeFirst()
  }

  func peek() -> Int {
    storage[0]
  }

  func empty() -> Bool {
    storage.isEmpty
  }
}
