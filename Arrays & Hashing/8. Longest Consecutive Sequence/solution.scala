object Solution {
    def longestConsecutive(nums: Array[Int]): Int = {
       val numsSet = Set.from(nums)
       var longest = 0

        for(n <- nums) {
            if(!numsSet.contains(n - 1)) {
                var length = 0
                while(numsSet.contains(n + length)) {
                    length += 1
                }
                longest = longest.max(length)
            }
        }

        longest
    }
}
