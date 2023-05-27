impl Solution {
    pub fn max_profit(prices: Vec<i32>) -> i32 {
        let mut min_left = 100000;
        let mut result = 0;
        for i in 0..prices.len() - 1 {
            min_left = prices[i].min(min_left);
            result = result.max(prices[i] - min_left);
        }
        result
    }
}
