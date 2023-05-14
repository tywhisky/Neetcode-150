# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  mapS = {}
  mapT = {}
  s.each_char{ |char|
    if mapS[char]
      mapS[char] += 1
    else
      mapS[char] = 1
    end
  }

  t.each_char{ |char|
    if mapT[char]
      mapT[char] += 1
    else
      mapT[char] = 1
    end
  }

  mapS == mapT
end
