import scala.collection.mutable.LinkedHashMap
case class LRUCache(capacity: Int) {
  var cache = new LinkedHashMap[Int, Int]()

  def put(key: Int, value: Int): Unit = {
    if (cache.contains(key)) {
      cache.remove(key)
      cache.put(key, value)
    } else {
      cache.put(key, value)
      val size = cache.size
      if (size > capacity) {
        val oldest = cache.keySet.head
        cache.remove(oldest)
      }
    }
  }

  def get(key: Int): Int = {
    if (cache.contains(key)) {
      val k = cache(key)
      cache.remove(key)
      cache.put(key, k)
      k
    } else -1
  }
}

/** Your LRUCache object will be instantiated and called as such: var obj = new
  * LRUCache(capacity) var param_1 = obj.get(key) obj.put(key,value)
  */
