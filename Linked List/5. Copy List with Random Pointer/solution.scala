object Solution {
  def copyRandomList(head: Node): Node = {
    val dummy = new Node(Int.MinValue)
    val map = scala.collection.mutable.Map[Node, Node]()

    def random(node: Node): Node = {
      Option(node) match {
        case Some(n) => map.getOrElseUpdate(n, new Node(n.value))
        case None    => null
      }
    }

    def build(head: Node, dummy: Node): Unit = {
      Option(head) match {
        case Some(node) =>
          val next = map.getOrElseUpdate(node, new Node(node.value))
          dummy.next = next

          val rand = random(node.random)
          next.random = rand

          build(head.next, next)

        case None =>
      }
    }
    build(head, dummy)
    dummy.next
  }
}
