//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Solution {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var middle = (nums1.count + nums2.count) / 2
        var left = 0
        var right = 0
        var result = 0.0
        while left + right < middle {
            
            if nums1[left] < nums2[right], left < (nums1.count - 1) {
                left += 1
                result = Double(nums2[right])
            } else if nums1[left] >= nums2[right], right < (nums2.count - 1) {
                right += 1
                result = Double(nums1[left])
            } else {
                result = (Double(nums1[left]) + Double(nums2[right])) / 2
                break
            }
        }
//        if (nums1.count + nums2.count) % 2 == 0 {
//            result = (result + Double(min(nums1[left], nums2[right]))) / 2
//        } else {
//            result = Double(max(nums1[left], nums2[right]))
//        }
        
        return result
    }
    
    
}

//var nums1 = [1,3], nums2 = [2]

//var nums1 = [1,3], nums2 = [2,4,5]

var nums1 = [1,3], nums2 = [2,4]

Solution().findMedianSortedArrays(nums1, nums2)
