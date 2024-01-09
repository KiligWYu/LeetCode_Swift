//
//  Node.swift
//  LeetCode
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import Foundation

public class Node {
  public var val: Int
  public var children: [Node]
  
  public init(_ val: Int) {
    self.val = val
    self.children = []
  }
}
