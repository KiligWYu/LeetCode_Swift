//
//  859. Buddy Strings
//  https://leetcode.com/problems/buddy-strings/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/27/24.
//

import Foundation

class Solution_859 {
  func buddyStrings(_ s: String, _ goal: String) -> Bool {
    guard s.count == goal.count else { return false }
    if s == goal, Set(s).count < s.count { return true }

    var diffs: [String.Index]
    do {
      diffs = try s.indices.reduce(into: []) { diffsArray, index in
        if s[index] != goal[index] { diffsArray.append(index) }
        if diffsArray.count > 2 { throw "too many differences" }
      }
    } catch {
      return false
    }

    if diffs.count == 2 {
      return s[diffs[0]] == goal[diffs[1]] && s[diffs[1]] == goal[diffs[0]]
    } else {
      return false
    }
  }
}

extension String: Error {}
