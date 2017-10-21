/* Bubble Sort
 - Iterate to last element, then second to last, then third to last, etc., and swap adjacent elements that don't respect sort order as you go. This effectively places elements in the correct position at the end of each loop cycle and works backwards to the first element.
 - Called Bubble Sort because some elements get sorted at the end faster than others similar to the way bubbles move in champagne
 - Runtime: 0(n^2)
 */

import UIKit

extension Array where Element: Comparable {
    mutating func bubbleSort(by areIncreasingOrder: (Element, Element) -> Bool) {
        for i in 0 ..< self.count - 1 {
            for j in 0 ..< self.count - i - 1 where areIncreasingOrder(self[j+1], self[j]) {
                self.swapAt(j, j+1)
            }
        }
    }
}

// Test
var numbers = [9,4,0,5,2,10,1,23,15,23,25]
numbers.bubbleSort(by: <)
print(numbers)
