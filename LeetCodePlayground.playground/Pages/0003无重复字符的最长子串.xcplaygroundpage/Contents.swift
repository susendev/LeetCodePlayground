//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 0
        var current: [Character] = []

        for c in s {
            if let index = current.firstIndex(of: c) {
                current.removeSubrange(current.startIndex...index)
            }
            current.append(c)
            result = max(result, current.count)
        }
        
        return result
    }
}
//"abcabcbb"
//"bbbbb"
//""
var test = "pwwkew"

Solution().lengthOfLongestSubstring(test)
