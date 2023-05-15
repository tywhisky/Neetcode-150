import scala.collection.mutable.HashMap
object Solution {
  def main(args: Array[String]): Unit = {
    val strs = Array("eat", "tea", "tan", "ate", "nat", "bat")
    val result = groupAnagrams(strs)
    println(result)
  }

  def groupAnagrams(strs: Array[String]): List[List[String]] = {
    var existMap = new HashMap[String, List[String]]
    val new_strs = strs.map(_.sorted)
    for(str <- strs) {
        val key = str.sorted
        if (existMap.contains(key)) {
            val temp = existMap(key).concat(List(str))
            existMap += (key -> temp)
        } else {
            existMap += (key -> List(str))
        }
    }
    existMap.values.toList
  }
}
