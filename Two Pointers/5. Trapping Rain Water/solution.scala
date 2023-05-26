object Solution {
    def trap(height: Array[Int]): Int = {
        val l = height.scanLeft(0){ _ max _ }.drop(1)
        val r = height.scanRight(0) { _ max _ }.dropRight(1)
        (l zipped r).map { _ min _ }
            .lazyZip(height).map { _ - _ }
            .sum
    }
}
