# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  prefix = prefix_sum(nums)
  postfix = prefix_sum(nums.reverse).reverse
  result = []

  for i in 0..nums.length - 1
    if i - 1 < 0
      prev = 1
    else
      prev = prefix[i - 1]
    end

    if i + 1 >= nums.length
      next_p = 1
    else
      next_p = postfix[i + 1]
    end
    result.append(prev * next_p)
  end

  result
end

def prefix_sum(array)
  result = []

  for i in 0..array.length - 1
    if i == 0
      result.append(array[i])
    else
      result.append(array[i] * result[i - 1])
    end
  end

  result
end
