defmodule Solution do
  @spec max_profit(prices :: [integer]) :: integer
  def max_profit(prices) do
    recursive(prices, 100_000, 0)
  end

  def recursive([], _, result), do: result
  def recursive([last], min_left, result), do: max(result, last - min_left)

  def recursive([left, right | tail], min_left, result) do
    new_min_left = min(left, min_left)
    recursive([right | tail], new_min_left, max(result, right - new_min_left))
  end
end
