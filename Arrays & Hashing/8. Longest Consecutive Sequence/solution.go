func longestConsecutive(nums []int) int {
	numsSet := make(map[int]bool)
	longest := 0

	for _, num := range nums {
		numsSet[num] = true
	}
	for _, num := range nums {
		if !numsSet[num-1] {
			length := 1
			temp := num + 1
			for numsSet[temp] {
				length++
				temp++
			}
			if length > longest {
				longest = length
			}
		}
	}

	return longest
}
