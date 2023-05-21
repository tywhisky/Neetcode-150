# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1
  while left < right
    if numbers[left] + numbers[right] > target
      right -= 1
    elsif numbers[left] + numbers[right] < target
      left += 1
    else
      return [left + 1, right + 1]
    end
  end
end
