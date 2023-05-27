object Solution {
    def maxProfit(prices: Array[Int]): Int = {
        var min_left = 100000
        var result = 0
        for(i <- 0 to prices.length - 1) {
            min_left = min(min_left, prices(i))
            result = max(result, prices(i) - min_left)
        }
        result
    }

    def max(x: Int, y: Int): Int = {
        if (x > y) x
        else y
    }

    def min(x: Int, y: Int): Int = {
        if (x < y) x
        else y
    }
}
