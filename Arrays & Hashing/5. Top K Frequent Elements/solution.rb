# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    # Convert Nums to Hash
    hash = Hash.new(0)
    nums.each { |n| hash[n] += 1}
    # Sorting
    hash = hash.sort_by{|k , v| v }.reverse.to_h
    # First K
    hash.keys.first(k)
end
