object Solution {
  def search(nums: Array[Int], target: Int): Int = {
    var left = 0
    var right = nums.length
    var result = -1
    while (left < right) {
      var mid = (left + right) / 2
      if (nums(mid) == target) {
        result = mid
        left = right + 1
      } else if (nums(mid) > target) {
        right = mid
      } else {
        left = mid + 1
      }
    }
    return result
  }
}
