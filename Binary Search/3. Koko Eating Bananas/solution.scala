object Solution {
  def minEatingSpeed(piles: Array[Int], h: Int): Int = {
    var left = 1
    var right = 1000000000 + 1;
    while (left < right) {
      val mid = left + (right - left) / 2
      if (f(piles, mid) <= h) {
        right = mid
      } else {
        left = mid + 1;
      }
    }
    left
  }
  def f(piles: Array[Int], x: Int): Int = {
    var hour = 0
    piles.foreach { pile =>
      hour += pile / x
      if (pile % x > 0) { hour += 1 }
    }
    hour
  }
}
