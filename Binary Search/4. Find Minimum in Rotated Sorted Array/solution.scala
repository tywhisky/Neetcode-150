object Solution {
  def findMin(nums: Array[Int]): Int = {
    var l = 0
    var r = nums.length - 1
    while (l < r) {
      val mid = l + (r - l) / 2
      if (nums(mid) > nums(r))
        l = mid + 1
      else
        r = mid
    }
    nums(l)
  }
}
