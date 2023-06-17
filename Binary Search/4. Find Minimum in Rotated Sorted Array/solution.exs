defmodule Solution do
  @spec find_min(nums :: [integer]) :: integer
  def find_min([h | tail]) do
    recursive(tail, h, h)
  end

  def recursive([], _prev, head), do: head

  def recursive([h | tail], prev, head) when prev < h, do: recursive(tail, h, head)

  def recursive([h | _], prev, _head), do: h
end
