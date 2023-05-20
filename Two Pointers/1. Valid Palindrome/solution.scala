object Solution {
    def isPalindrome(s: String): Boolean = {
        var arr = s.split("").filter("""[a-zA-Z\d+]""".r.pattern.matcher(_).matches).map(_.toUpperCase)
        var left = 0
        var right = arr.length - 1
        while(left < right) {
            if(arr(left) != arr(right)) {return false}
            left += 1
            right -= 1
        }
        return true
    }
}
