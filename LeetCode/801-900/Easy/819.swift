//
//  819. Most Common Word
//  https://leetcode.com/problems/most-common-word/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/25/24.
//

import Foundation

class Solution_819 {
  func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
    var words = paragraph.lowercased().split { !$0.isLetter }
    words.removeAll { banned.contains(String($0)) }
    let dict = Dictionary(words.map { ($0, 1) }, uniquingKeysWith: +)
    return String(dict.max { $1.value > $0.value }?.key ?? "")
  }
}
