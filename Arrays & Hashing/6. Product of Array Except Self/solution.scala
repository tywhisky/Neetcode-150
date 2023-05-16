import scala.collection.mutable.ArrayBuffer
object Solution {
    def main(args: Array[String]): Unit = {
        val nums = Array(1, 2, 3, 4)
        println(productExceptSelf(nums).toList)
    }

    def productExceptSelf(nums: Array[Int]): Array[Int] = {
        val prefix = prefixSum(nums)
        val postfix = prefixSum(nums.reverse).reverse
        var result = ArrayBuffer[Int]()

        for i <- 0 to nums.length - 1 do
            val pre = if(i - 1 < 0) 1 else prefix(i - 1)
            val pos = if(i + 1 >= nums.length) 1 else postfix(i + 1)
            result.append(pre * pos)

        result.toArray
    }

    def prefixSum(nums: Array[Int]) = {
        var result = ArrayBuffer[Int]()
        for i <- 0 to nums.length - 1 do
            if (i == 0) {
                result.append(nums(0))
            } else {
                result.append(nums(i) * result(i - 1))
            }
        result.toArray
    }
}
