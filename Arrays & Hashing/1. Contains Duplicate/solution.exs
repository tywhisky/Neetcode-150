defmodule Solution do
  @spec contains_duplicate(nums :: [integer]) :: boolean
  def contains_duplicate(nums) do
    recursive(nums, %{})
  end

  def recursive([], _map), do: false
  def recursive([h | tail], map) do
    if map[h] do
      true
    else
      recursive(tail, Map.put(map, h, true))
    end
  end
end
