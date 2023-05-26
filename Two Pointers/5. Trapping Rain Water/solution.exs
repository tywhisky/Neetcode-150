defmodule Solution do
  @spec trap(height :: [integer]) :: integer
  def trap(height) do
      left_max = find_max(height, 0, []) |> Enum.with_index(&{&2, &1}) |> Map.new()

    right_max =
      find_max(Enum.reverse(height), 0, []) |> Enum.reverse() |> Enum.with_index(&{&2, &1}) |> Map.new()

    height
    |> Enum.with_index()
    |> Enum.reduce(0, fn {v, i}, acc ->
      if left_max[i - 1] && right_max[i + 1] do
        max(0, min(left_max[i - 1], right_max[i + 1]) - v) + acc
      else
        acc
      end
    end)
  end

  def find_max([], _, result), do: Enum.reverse(result)

  def find_max([h | tail], m, result) do
    find_max(tail, max(h, m), [max(h, m) | result])
  end
end
