def contains_duplicate(nums)
  map = {}

  nums.each do |num|
    if map[num]
      return true
    else
      map[num] = true
    end
  end

  return false
end
