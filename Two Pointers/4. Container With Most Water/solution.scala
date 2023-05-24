object Solution {
    def maxArea(height: Array[Int]): Int = {
        var left = 0
        var right = height.length - 1
        var result = 0
        while (left < right) {
            val newResult = (right - left) * (height(left).min(height(right)))
            result = newResult.max(result)
            if (height(left) > height(right)) {
                right -= 1
            } else {
                left += 1
            }
        }
        result
    }
}
