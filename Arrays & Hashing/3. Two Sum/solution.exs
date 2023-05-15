defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    recursive(Enum.with_index(nums), target)
  end

  def recursive([], _target), do: -1

  def recursive([{v, i} | tail], target) do
    case Enum.find(tail, &(elem(&1, 0) == target - v)) do
      {_, j} -> [i, j]
      _ -> recursive(tail, target)
    end
  end
end
