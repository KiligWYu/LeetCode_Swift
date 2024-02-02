//
//  933. Number of Recent Calls
//  https://leetcode.com/problems/number-of-recent-calls/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/2/24.
//

import Foundation

class RecentCounter {
  private var requests: [Int]

  init() {
    requests = []
  }

  func ping(_ t: Int) -> Int {
    requests.append(t)
    requests = requests.filter { $0 >= t - 3000 && $0 <= t }
    return requests.count
  }
}
