/**
 * Definition for singly-linked list.
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var result = ListNode()
        var current = result
        var tmp = 0
        while l1 != nil || l2 != nil || tmp != 0 {
            let add = (l1?.val ?? 0) + (l2?.val ?? 0) + tmp
            if add >= 10 {
                current.next = ListNode(add - 10)
                tmp = 1
            } else {
                current.next = ListNode(add)
                tmp = 0
            }
            current = current.next!
            l1 = l1?.next
            l2 = l2?.next
        }
        
        return result.next
    }
}

