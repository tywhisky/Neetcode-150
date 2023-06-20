object Solution {
  def mergeKLists(lists: Array[ListNode]): ListNode = {
    val sorted = lists.filter(_ != null).sortWith { _.x < _.x }
    sorted.headOption
      .map { h =>
        h.next = mergeKLists(h.next +: sorted.tail)
        h
      }
      .getOrElse(null)
  }
}
