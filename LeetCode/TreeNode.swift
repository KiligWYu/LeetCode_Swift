//
//  TreeNode.swift
//  LeetCode
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/8/23.
//

import Foundation

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

public extension TreeNode {
  var preOrder: [Int] {
    var res = [Int]()
    
    func helper(_ root: TreeNode?, _ res: inout [Int]) {
      guard let root else { return }
      res.append(root.val)
      helper(root.left, &res)
      helper(root.right, &res)
    }
    
    helper(self, &res)
    return res
  }
  
  var inOrder: [Int] {
    var res = [Int]()
    
    func helper(_ root: TreeNode?, _ res: inout [Int]) {
      guard let root else { return }
      helper(root.left, &res)
      res.append(root.val)
      helper(root.right, &res)
    }
    
    helper(self, &res)
    return res
  }
  
  var postOrder: [Int] {
    var res = [Int]()
    
    func helper(_ root: TreeNode?, _ res: inout [Int]) {
      guard let root else { return }
      helper(root.left, &res)
      helper(root.right, &res)
      res.append(root.val)
    }
    
    helper(self, &res)
    return res
  }
}
