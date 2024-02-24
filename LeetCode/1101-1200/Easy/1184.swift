//
//  1184. Distance Between Bus Stops
//  https://leetcode.com/problems/distance-between-bus-stops/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import Foundation

class Solution_1184 {
  /*
   func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) -> Int {
     var start = start, destination = destination
     if start > destination { swap(&start, &destination) }
     let clockwise = distance[start..<destination].reduce(0, +)
     let counterclockwise = distance.reduce(0, +) - clockwise
     return min(clockwise, counterclockwise)
   }
    */

  func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) -> Int {
    var sum1 = 0, sum2 = 0
    var start = start, destination = destination
    if start > destination { swap(&start, &destination) }
    for i in 0 ..< distance.count {
      if i >= start && i < destination {
        sum1 += distance[i]
      } else {
        sum2 += distance[i]
      }
    }
    return min(sum1, sum2)
  }
}
