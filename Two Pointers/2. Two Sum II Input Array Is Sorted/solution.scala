object Solution {
    def twoSum(numbers: Array[Int], target: Int): Array[Int] = {
        var left = 0
        var right = numbers.length - 1
        while(left < right) {
            if (numbers(left) + numbers(right) > target) {
                right -= 1
            } else if (numbers(left) + numbers(right) < target) {
                left += 1
            } else {
                return Array(left + 1, right + 1)
            }
        }
        return Array(left, right)
    }
}
