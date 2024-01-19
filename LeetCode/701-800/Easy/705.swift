//
//  705. Design HashSet
//  https://leetcode.com/problems/design-hashset/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/19/24.
//

import Foundation

class MyHashSet {
  private var nums: [Int]
  
  init() {
    nums = []
  }
    
  func add(_ key: Int) {
    guard !nums.contains(key) else { return }
    nums.append(key)
  }
    
  func remove(_ key: Int) {
    nums.removeAll { $0 == key }
  }
    
  func contains(_ key: Int) -> Bool {
    nums.contains(key)
  }
}
