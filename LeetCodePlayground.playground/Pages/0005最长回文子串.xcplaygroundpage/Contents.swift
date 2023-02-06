
class Solution {
    func longestPalindrome(_ s: String) -> String {
        var chars = Array(s)
        var currentIndex = 0
        var pre = 0, current = 0
        for index in 0..<chars.count {
            current = max(expand(chars, left: index, right: index), expand(chars, left: index, right: index + 1))
            if current > pre {
                pre = current
                currentIndex = index
            }
        }
        let startIndex = currentIndex - (pre - 1) / 2
        let endIndex = currentIndex + pre / 2
        return String(chars[startIndex...endIndex])
    }

    func expand(_ s: [Character], left: Int, right: Int ) -> Int {
        var left = left, right = right
        while left >= 0 && right < s.count {
            if s[left] != s[right] {
                break
            }
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}

/*
class Solution {
    
    func longestPalindrome(_ s: String) -> String {
        guard s.count >= 2 else {
            return s
        }
        var chars = Array(s)
        var dp: [String: Bool] = [:]
        var start = 0, end = 0
        for L in 1..<chars.count {
            for i in 0..<chars.count {
                let j = L + i - 1
                let key = "\(i),\(j)"
                if j >= chars.count {
                    break
                }
                
                if chars[i] != chars[j] {
                    dp[key] = false
                } else {
                    dp[key] = j - i < 3 ? true : (dp["\(i + 1),\(j - 1)"] ?? true)
                }
                if (dp[key] ?? false) && j - i + 1 > (end - start + 1) {
                    start = i
                    end = j
                }
            }
        }
        print(start, end)
        return String(chars[start...end])
    }

}


var s = "bb"

Solution().longestPalindrome(s)
 */
