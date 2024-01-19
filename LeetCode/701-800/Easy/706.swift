//
//  706. Design HashMap
//  https://leetcode.com/problems/design-hashmap/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/19/24.
//

import Foundation

class MyHashMap {
  private var myHashMap: [(Int, Int)]

  init() {
    myHashMap = []
  }

  func put(_ key: Int, _ value: Int) {
    if let index = myHashMap.firstIndex(where: { $0.0 == key }) {
      myHashMap[index].1 = value
    } else {
      myHashMap.append((key, value))
    }
  }

  func get(_ key: Int) -> Int {
    if let index = myHashMap.firstIndex(where: { $0.0 == key }) {
      return myHashMap[index].1
    }
    return -1
  }

  func remove(_ key: Int) {
    myHashMap.removeAll { $0.0 == key }
  }
}
