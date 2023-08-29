use rand::Rng;
   pub fn find_kth_largest(nums: Vec<i32>, k: i32) -> i32 {
        let mut nums = nums;
        let mut left = 0;
        let mut right = nums.len() - 1;
        let mut rng = rand::thread_rng();
        loop {
            let pivot_index = rng.gen_range(left, right + 1);
            let new_pivot_index = Self::partition(&mut nums, left, right, pivot_index);
            if new_pivot_index == nums.len() - k as usize {
                return nums[new_pivot_index];
            } else if new_pivot_index > nums.len() - k as usize {
                right = new_pivot_index - 1;
            } else {
                left = new_pivot_index + 1;
            }
        }
    }

    fn partition(nums: &mut Vec<i32>, left: usize, right: usize, pivot_index: usize) -> usize {
        let pivot = nums[pivot_index];
        nums.swap(pivot_index, right);
        let mut stored_index = left;
        for i in left..right {
            if nums[i] < pivot {
                nums.swap(i, stored_index);
                stored_index += 1;
            }
        }
        nums.swap(right, stored_index);
        stored_index
    }
}use rand::Rng;

impl Solution {
    pub fn find_kth_largest(nums: Vec<i32>, k: i32) -> i32 {
        let mut nums = nums;
        let mut left = 0;
        let mut right = nums.len() - 1;
        let mut rng = rand::thread_rng();
        loop {
            let pivot_index = rng.gen_range(left, right + 1);
            let new_pivot_index = Self::partition(&mut nums, left, right, pivot_index);
            if new_pivot_index == nums.len() - k as usize {
                return nums[new_pivot_index];
            } else if new_pivot_index > nums.len() - k as usize {
                right = new_pivot_index - 1;
            } else {
                left = new_pivot_index + 1;
            }
        }
    }

    fn partition(nums: &mut Vec<i32>, left: usize, right: usize, pivot_index: usize) -> usize {
        let pivot = nums[pivot_index];
        nums.swap(pivot_index, right);
        let mut stored_index = left;
        for i in left..right {
            if nums[i] < pivot {
                nums.swap(i, stored_index);
                stored_index += 1;
            }
        }
        nums.swap(right, stored_index);
        stored_index
    }
}
