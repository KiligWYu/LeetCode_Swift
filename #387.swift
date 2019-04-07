//
//  #387
//  https://leetcode.com/problems/first-unique-character-in-a-string/
//

class Solutin {
    func firstUniqChar(_ s: String) -> Int {
        let dict = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: + )
        
        for (index, value) in s.enumerated() {
            if dict[value] == 1 {
                return index
            }
        }
        
        return -1
    }
}
