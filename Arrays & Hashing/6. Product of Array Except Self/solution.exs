defmodule Solution do
  @spec product_except_self(nums :: [integer]) :: [integer]
  def product_except_self(nums) do
    p1 = prefix_sum(nums, 1, []) |> build_map()
    p2 = prefix_sum(Enum.reverse(nums), 1, []) |> Enum.reverse() |> build_map()

    0..length(nums) - 1
    |> Enum.map(fn index ->
      ((p2[index - 1] && p2[index - 1]) || 1) * ((p1[index + 1] && p1[index + 1]) || 1)
    end)
    |> Enum.reverse()
  end

  def build_map(list) do
     Enum.with_index(list, &{&2, &1}) |> Map.new()
  end

  def prefix_sum([], _sum, result), do: result

  def prefix_sum([h | tail], sum, result) do
    prefix_sum(tail, sum * h, [sum * h | result])
  end
end
