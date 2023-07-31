func lastStoneWeight(stones []int) int {
	sort.Slice(stones, func(i, j int) bool {
		return stones[i] > stones[j]
	})
	return recursive(stones)
}

func recursive(stones []int) int {
	if len(stones) == 1 {
		return stones[0]
	} else if len(stones) == 0 {
		return 0
	} else {
		slice := stones[:]
		subset := slice[:2]
		tail := slice[2:]
		diff := subset[0] - subset[1]
		if diff == 0 {
			return recursive(tail)
		} else {
			newStones := append(tail, diff)
			sort.Slice(newStones, func(i, j int) bool {
				return newStones[i] > newStones[j]
			})
			return recursive(newStones)
		}
	}
}
