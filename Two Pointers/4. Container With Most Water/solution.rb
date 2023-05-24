# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0
  right = height.length - 1
  result = 0

  while left < right
    result = [result, compute_area(height, left, right)].max
    if height[left] <= height[right]
      left += 1
    else
       right -= 1
    end
  end

  result
end

def compute_area(height, left, right)
  (right - left) * ([height[left], height[right]].min)
end
