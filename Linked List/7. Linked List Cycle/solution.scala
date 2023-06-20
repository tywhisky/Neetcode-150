/** Definition for singly-linked list. class ListNode(var _x: Int = 0) { var
  * next: ListNode = null var x: Int = _x }
  */

object Solution {
  def hasCycle(head: ListNode): Boolean = {
    if (head == null) return false
    var low = head
    var fast = head.next
    while (
      low != null && low.next != null && fast != null && fast.next != null
    ) {
      if (low == fast) return true
      low = low.next
      fast = fast.next.next
    }
    false
  }
}
