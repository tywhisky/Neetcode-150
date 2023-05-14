package main

import "fmt"

func main() {
	nums := []int{1, 2, 3}
	fmt.Print(containsDuplicate(nums))
}

func containsDuplicate(nums []int) bool {
	exist_map := make(map[int]bool)
	for i := 0; i < len(nums); i++ {
		if exist_map[nums[i]] {
			return true
		} else {
			exist_map[nums[i]] = true
		}
	}
	return false
}
