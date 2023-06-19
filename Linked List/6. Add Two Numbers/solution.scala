/** Definition for singly-linked list. class ListNode(_x: Int = 0, _next:
  * ListNode = null) { var next: ListNode = _next var x: Int = _x }
  */
object Solution {
  def addTwoNumbers(l1: ListNode, l2: ListNode): ListNode = {
    val num1 = nodeToNum(l1, List[Int]())
    val num2 = nodeToNum(l2, List[Int]())
    val sumList = (num1 + num2).toString.map(_.asDigit).toList
    var result = new ListNode(sumList.head)
    for (digit <- sumList.tail) {
      result = new ListNode(digit, result)
    }
    result
  }

  def nodeToNum(node: ListNode, result: List[Int]): BigInt = {
    if (node != null) nodeToNum(node.next, node.x :: result)
    else result.foldLeft(BigInt(0))((acc, n) => acc * 10 + n)
  }
}
