object Solution {
  def main(args: Array[String]): Unit = {
    val nums = Array(2, 7, 11, 5)
    val target = 9
    val result = twoSum(nums, target)
    println(result)
  }

  def twoSum(nums: Array[Int], target: Int): Array[Int] = {
    for (i <- 0 to nums.length - 1) {
      for (j <- i + 1 to nums.length - 1) {
        if (nums(i) + nums(j) == target) {
          return Array(i, j)
        }
      }
    }
    return Array(1)
  }
}
