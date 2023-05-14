package main

import "reflect"

func isAnagram(s string, t string) bool {
	groupS := make(map[rune]int)
	groupT := make(map[rune]int)

	for _, char := range s {
		if _, ok := groupS[char]; ok {
			groupS[char] += 1
		} else {
			groupS[char] = 0
		}
	}

	for _, char := range t {
		if _, ok := groupT[char]; ok {
			groupT[char] += 1
		} else {
			groupT[char] = 0
		}
	}

	return reflect.DeepEqual(groupS, groupT)
}
