/** Definition for singly-linked list. class ListNode(_x: Int = 0, _next:
  * ListNode = null) { var next: ListNode = _next var x: Int = _x }
  */
object Solution {
  def reverseList(head: ListNode): ListNode = {
    if (head == null) null else reverseList(null, head, head.next)
  }

  def reverseList(
      previous: ListNode,
      current: ListNode,
      next: ListNode
  ): ListNode = {
    current.next = previous
    if (next != null) reverseList(current, next, next.next) else current
  }
}
