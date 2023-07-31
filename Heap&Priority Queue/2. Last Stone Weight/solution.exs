defmodule Solution do
  @spec last_stone_weight(stones :: [integer]) :: integer
  def last_stone_weight(stones) do
    recursive(Enum.sort(stones, :desc))
  end

  def recursive([result]), do: result
  def recursive([]), do: 0
  def recursive([xl, l | tail]) when xl == l do
    recursive(tail)
  end

  def recursive([xl, l | tail]) do
    recursive([xl - l | tail] |> Enum.sort(:desc))
  end
end
