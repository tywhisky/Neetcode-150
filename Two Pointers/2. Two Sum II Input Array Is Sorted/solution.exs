defmodule Solution do
  @spec two_sum(numbers :: [integer], target :: integer) :: [integer]
  def two_sum(numbers, target) do
    recursive(Enum.with_index(numbers, 1), nil, target)
  end

  def recursive([{v, _} | tail], prev, target) when v == prev do
    recursive(tail, prev, target)
  end

  def recursive([{v, i} | tail], _prev, target) do
    map = Map.new(tail)
    if map[target - v] do
      [i, map[target - v]]
    else
      recursive(tail, v, target)
    end
  end
end
