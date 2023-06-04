defmodule Solution do
  @spec generate_parenthesis(n :: integer) :: [String.t()]
  def generate_parenthesis(n) do
    recursive(0, 0, "", n, [])
  end

  def recursive(left, right, curr, n, result) when left == n and right == n, do: [curr | result]

  def recursive(left, right, curr, n, result) do
    l = (left < n && recursive(left + 1, right, "#{curr}(", n, result)) || result
    (right < left && recursive(left, right + 1, "#{curr})", n, l)) || l
  end
end
