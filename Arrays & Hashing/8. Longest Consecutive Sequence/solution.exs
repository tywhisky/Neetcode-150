defmodule Solution do
  @spec longest_consecutive(nums :: [integer]) :: integer
  def longest_consecutive(nums) do
    map = Map.new(nums, &{&1, true})

    recursive(Map.to_list(map), map, 0)
  end

  def recursive([], _, max), do: max
  def recursive([{k, _v} | tail], map, max) do
    {post_result, post_map} = find(map, k + 1, 0, :post)
    {prev_result, prev_map} = find(post_map, k - 1, 0, :prev)

    recursive(tail, prev_map, max(max, 1 + post_result + prev_result))
  end

  def find(map, k, result, type) do
    next = if type == :prev, do: k - 1, else: k + 1
    if map[k] do
      find(Map.delete(map, k), next, result + 1, type)
    else
      {result, map}
    end
  end
end
