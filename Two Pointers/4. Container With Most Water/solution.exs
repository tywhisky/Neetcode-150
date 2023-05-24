defmodule Solution do
  @spec max_area(height :: [integer]) :: integer
  def max_area(height) do
    tuple = List.to_tuple(height)
    length = tuple_size(tuple)

    compute(tuple, 0, length - 1, 0)
  end

  def compute(tuple, left, right, area) when elem(tuple, left) <= elem(tuple, right) do
    if left + 1 >= right do
      max(
      min(elem(tuple, left), elem(tuple, right)) * abs(left - right), area
    )
    else
      compute(tuple, left + 1, right, max(
        min(elem(tuple, left), elem(tuple, right)) * abs(left - right), area
      ))
    end
  end

  def compute(tuple, left, right, area) when elem(tuple, right) <= elem(tuple, left) do
    if right - 1 <= left do
      max(min(elem(tuple, left), elem(tuple, right)) * abs(left - right), area)
    else
      compute(tuple, left, right - 1, max(
        min(elem(tuple, left), elem(tuple, right)) * abs(left - right), area
      ))
    end
  end
end
