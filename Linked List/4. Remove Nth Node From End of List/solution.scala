/** Definition for singly-linked list. class ListNode(_x: Int = 0, _next:
  * ListNode = null) { var next: ListNode = _next var x: Int = _x }
  */
object Solution {
  def removeNthFromEnd(head: ListNode, n: Int): ListNode = {
    var len = 0
    var curr = head
    while (curr != null) {
      len += 1
      curr = curr.next
    }
    if (len == n) return head.next
    val target = len - n - 1
    var curr2 = head
    for (idx <- 0 to target) {
      if (idx == target) {
        curr2.next = curr2.next.next
      }
      curr2 = curr2.next
    }
    head
  }
}
