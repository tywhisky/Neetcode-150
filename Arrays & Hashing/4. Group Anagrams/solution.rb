# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  map = {}
  strs.each do |str|
    key = str.chars.sort.join
    if map[key]
      map[key] = map[key].append(str)
    else
      map[key] = [str]
    end
  end
  return map.values
end
