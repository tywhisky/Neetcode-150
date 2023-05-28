object Solution {
  def lengthOfLongestSubstring(s: String): Int = {
    val lastIndexOf = Array.ofDim[Int](128)

    s.indices.foldLeft((0, 0)) {
      case ((last, longest), next) =>
        val l = last max lastIndexOf(s(next))
        lastIndexOf(s(next)) = next + 1
        l -> (longest max (next - l + 1))
    }._2
  }
}
