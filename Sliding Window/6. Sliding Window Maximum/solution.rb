def max_sliding_window(nums, k)
  answer = []
  queue = []

  nums.each_with_index do |val, index|
    while !queue.empty? && nums[queue[-1]] < val
      queue.pop
    end

    queue.push(index)

    if queue[0] + k == index
      queue.shift
    end

    if index >= k - 1
      answer.push(nums[queue[0]])
    end
  end
  answer
end
