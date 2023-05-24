impl Solution {
    pub fn max_area(height: Vec<i32>) -> i32 {
        let mut left = 0 as usize;
        let mut right = (height.len() - 1) as usize;
        let mut result = 0;

        while left < right {
            let new_result = (right - left) as i32 * (height[left].min(height[right]));
            result = result.max(new_result);
            if height[left] > height[right] {
                right -= 1;
            } else {
                left += 1;
            }
        }

        result as i32
    }
}
