func groupAnagrams(strs []string) [][]string {
	mapS := make(map[string][]string, 0)

	for _, val := range strs {
		byteString := []byte(val)
		sort.Slice(byteString, func(i, j int) bool { return byteString[i] < byteString[j] })
		sortedString := string(byteString)

		mapS[sortedString] = append(mapS[sortedString], val)
	}

	ans := make([][]string, 0)

	for _, val := range mapS {
		ans = append(ans, val)
	}
	return ans
}
