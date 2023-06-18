import scala.collection.immutable
class TimeMap {
  private var map = immutable.Map[String, immutable.TreeMap[Int, String]]()

  def set(key: String, value: String, timestamp: Int): Unit = {
    val treeMap = map.getOrElse(key, immutable.TreeMap[Int, String]())
    map = map.updated(key, treeMap + (timestamp -> value))
  }

  def get(key: String, timestamp: Int): String = {
    val treeMap = map.getOrElse(key, immutable.TreeMap[Int, String]())
    val prevTimestamp = treeMap.rangeUntil(timestamp + 1).lastOption
    prevTimestamp.map(m => treeMap(m._1)).getOrElse("")
  }
}
