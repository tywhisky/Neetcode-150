# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  result = []
  nums_hash = {}

  nums.each_with_index do |num, index|
    previous_index = nums_hash[(target - num)]

    if !previous_index.nil?
      result << previous_index
      result << index
      break
    end

    nums_hash[num] =  index
  end

  return result;
end
