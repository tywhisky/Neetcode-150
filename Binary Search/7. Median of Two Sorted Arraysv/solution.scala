import scala.annotation.tailrec

object Solution {
  @tailrec
  def step(
      l1: List[Int],
      l2: List[Int],
      twoBack: Int,
      oneBack: Int,
      n: Int,
      totalLen: Int
  ): Double = {
    if (n * 2 > totalLen) {
      if (totalLen % 2 == 0) {
        (twoBack.toDouble + oneBack.toDouble) / 2d
      } else {
        oneBack.toDouble
      }
    } else {
      (l1, l2) match {
        case (Nil, _) => {
          // l1 is exausted
          if (n * 2 < totalLen - 2) // can fast forward
            step(l1, l2.drop(1), oneBack, l2.head, n + 1, totalLen) // lazy
          else
            step(l1, l2.drop(1), oneBack, l2.head, n + 1, totalLen) // lazy
        }
        case (_, Nil) => {

          if (n * 2 < totalLen - 2) // can fast forward
            step(l1.drop(1), l2, oneBack, l1.head, n + 1, totalLen) // lazy
          else
            step(l1.drop(1), l2, oneBack, l1.head, n + 1, totalLen) // lazy
        }
        case (n1 :: rem1, n2 :: rem2) =>
          if (n1 < n2)
            step(rem1, l2, oneBack, n1, n + 1, totalLen)
          else
            step(l1, rem2, oneBack, n2, n + 1, totalLen)
      }
    }
  }

  def findMedianSortedArrays(nums1: Array[Int], nums2: Array[Int]): Double = {
    step(nums1.toList, nums2.toList, 0, 0, 0, nums1.length + nums2.length)
  }
}
