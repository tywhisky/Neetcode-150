import scala.collection.mutable.HashSet

object Solution {
    def containsDuplicate(nums: Array[Int]): Boolean = {
        var map: HashSet[Int] = HashSet()
        for(num <- nums) {
            if (map.contains(num)) return true
            map.add(num)
        }
        return false
    }
}
