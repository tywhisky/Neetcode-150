# @param {Integer[]} height
# @return {Integer}
def trap(height)
    return 0 if height.size < 3

    sum = 0
    left, max_left = 0, 0
    right, max_right = height.size - 1, 0

    while left < right
        if height[left] < height[right]
            height[left] >= max_left ? (max_left = height[left]) : sum += max_left - height[left]
            left += 1
        else
            height[right] >= max_right ? (max_right = height[right]) : sum += max_right - height[right]
            right -= 1
        end
    end

    sum
end
