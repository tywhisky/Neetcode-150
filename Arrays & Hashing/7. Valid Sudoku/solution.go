func isValidSudoku(board [][]byte) bool {
	tmp := make(map[int]int)
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			n := board[i][j]
			if n != '.' {
				tmp[int(n)*10+i]++
				tmp[int(n)*100+j]++
				tmp[int(n)*1000+(i/3*10+j/3)]++
				if tmp[int(n)*10+i] > 1 || tmp[int(n)*100+j] > 1 || tmp[int(n)*1000+(i/3*10+j/3)] > 1 {
					return false
				}
			}
		}
	}
	return true
}
