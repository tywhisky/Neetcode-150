/** Definition for singly-linked list. class ListNode(_x: Int = 0, _next:
  * ListNode = null) { var next: ListNode = _next var x: Int = _x }
  */
object Solution {
  def reorderList(head: ListNode): Unit = {
    if (head == null) return
    var low = head
    var fast = head.next
    while (fast != null && fast.next != null) {
      low = low.next
      fast = fast.next.next
    }
    var backReversed = reverseList(low.next)
    var temp = head
    var prev = temp
    while (temp != null) {
      if (temp == low) temp.next = null
      temp = temp.next
    }

    while (prev != null || backReversed != null) {
      val pTemp = prev.next
      val bTemp = if (backReversed != null) backReversed.next else null

      prev.next = backReversed
      if (backReversed != null) backReversed.next = pTemp
      prev = pTemp
      backReversed = bTemp
    }
  }

  def reverseList(head: ListNode): ListNode = {
    if (head == null) return null
    var result: ListNode = new ListNode(head.x)
    var curr = head.next
    while (curr != null) {
      result = new ListNode(curr.x, result)
      curr = curr.next
    }
    result
  }
}
