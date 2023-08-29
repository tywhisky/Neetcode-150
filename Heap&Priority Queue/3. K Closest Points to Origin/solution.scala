object Solution {
    import scala.util.control.Breaks._

    def kClosest(points: Array[Array[Int]], K: Int): Array[Array[Int]] = {
    val len = points.length
    var l = 0
    var r = len - 1

    breakable {
        while (l <= r) {
        val mid = helper(points, l, r)
        if (mid == K) break
        if (mid < K) {
            l = mid + 1
        } else {
            r = mid - 1
        }
        }
    }

    return points.slice(0, K)
    }

    def helper(A: Array[Array[Int]], l: Int, r: Int): Int = {
    val pivot = A(l)
    var left = l
    var right = r

    while (left < right) {
        while (left < right && compare(A(right), pivot) >= 0) {
        right -= 1
        }
        A(left) = A(right)
        while (left < right && compare(A(left), pivot) <= 0) {
        left += 1
        }
        A(right) = A(left)
    }

    A(left) = pivot
    return left
    }

    def compare(p1: Array[Int], p2: Array[Int]): Int = {
    p1(0) * p1(0) + p1(1) * p1(1) - p2(0) * p2(0) - p2(1) * p2(1)
    }
}
