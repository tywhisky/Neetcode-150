# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  numSet = Set.new(nums)
  longest = 0

  for n in nums
    if !numSet.include?(n - 1)
      length = 0
      while numSet.include?(n + length)
        length += 1
      end
      longest = [length, longest].max
    end
  end

  longest
end
