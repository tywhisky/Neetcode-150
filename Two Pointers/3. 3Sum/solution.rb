def three_sum(nums)
    nums.sort!
    result = []
    nums.each_with_index do |n, i|
        next if i > 0 && n == nums[i - 1]
        l, r = i + 1, nums.length - 1
        while l < r
            three_sum = n + nums[l] + nums[r]
            if three_sum > 0
                r -= 1
            elsif three_sum < 0
                l += 1
            else
                result.push([n, nums[l], nums[r]])
                l += 1
                while nums[l] == nums[l - 1] && l < r
                    l += 1
                end
            end
        end
    end

    return result
end
