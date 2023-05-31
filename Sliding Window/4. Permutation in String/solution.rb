# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  s1_map = {}
  s1_list = s1.split("")
  s1_list.each do |c|
    if s1_map[c]
      s1_map[c] += 1
    else
      s1_map[c] = 1
    end
  end

  s2_map = {}
  s2_list = s2.split("")
  s2.split("").slice(0..s1.length - 1).each do |c|
    if s2_map[c]
      s2_map[c] += 1
    else
      s2_map[c] = 1
    end
  end

  right = s1.length
  while right <= s2.length
    return true if s1_map <= s2_map
    left = right - s1.length
    s2_map[s2_list[left]] -= 1
    if s2_map[s2_list[right]]
      s2_map[s2_list[right]] += 1
    else
      s2_map[s2_list[right]] = 1
    end
    right += 1
  end

  false
end

s1 = "ab"
s2 = "eidboaoo"

s1 = "adc"
s2 = "dcda"

result = check_inclusion(s1, s2)
puts result
