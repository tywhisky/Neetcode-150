object Solution {
  def topKFrequent(nums: Array[Int], k: Int): Array[Int] = {
    nums
      .groupBy(x => x)
      .values
      .toArray
      .sortWith{ case (a,b) => a.length.compareTo(b.length) > 0 }
      .map(_.head)
      .take(k)
  }
}
