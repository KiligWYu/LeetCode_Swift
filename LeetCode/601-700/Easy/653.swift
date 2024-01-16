//
//  653. Two Sum IV - Input is a BST
//  https://leetcode.com/problems/two-sum-iv-input-is-a-bst/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import Foundation

class Solution_653 {
  func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
    var nums = [Int]()

    func inorder(_ root: TreeNode?, _ nums: inout [Int]) {
      guard let root else { return }
      inorder(root.left, &nums)
      nums.append(root.val)
      inorder(root.right, &nums)
    }

    inorder(root, &nums)

    var i = 0, j = nums.count - 1
    while i < j {
      if nums[i] + nums[j] == k { return true }
      nums[i] + nums[j] < k ? (i += 1) : (j -= 1)
    }
    return false
  }
}
