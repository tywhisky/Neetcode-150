func productExceptSelf(nums []int) []int {
	res := make([]int, len(nums))
	for i := 0; i < len(res); i++ {
		res[i] = 1
	}
	left := 1
	right := 1
	for i := 0; i < len(nums); i++ {
		j := len(nums) - 1 - i
		res[j] = res[j] * right
		right = right * nums[j]
		res[i] = res[i] * left
		left = left * nums[i]
	}

	return res
}
