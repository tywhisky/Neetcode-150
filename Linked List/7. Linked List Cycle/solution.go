/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func hasCycle(head *ListNode) bool {
	if head == nil {
		return false
	}
	low := head
	fast := head.Next
	for low != nil && low.Next != nil && fast != nil && fast.Next != nil {
		if low == fast {
			return true
		}
		low = low.Next
		fast = fast.Next.Next
	}
	return false
} /**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func hasCycle(head *ListNode) bool {
	if head == nil {
		return false
	}
	low := head
	fast := head.Next
	for low != nil && low.Next != nil && fast != nil && fast.Next != nil {
		if low == fast {
			return true
		}
		low = low.Next
		fast = fast.Next.Next
	}
	return false
}
