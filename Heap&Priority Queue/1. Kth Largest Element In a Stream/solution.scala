import collection.mutable.PriorityQueue

class KthLargest(k: Int, nums: Array[Int]) {
  val queue = PriorityQueue[Int](nums: _*).reverse.takeRight(k)

  def add(`val`: Int): Int = {
    queue += `val`
    while (queue.size > k) queue.dequeue
    queue.head
  }

}
