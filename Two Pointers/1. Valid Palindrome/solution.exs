defmodule Solution do
  @spec is_palindrome(s :: String.t) :: boolean
  def is_palindrome(s) do
    list =
      s
      |> String.graphemes()
      |> Enum.filter(& &1=~ ~r/[a-zA-Z\d+]/)
      |> Enum.map(&String.upcase/1)

    two_pointers(list, Enum.reverse(list))
  end

  def two_pointers([], []), do: true
  def two_pointers([last], [last]), do: true
  def two_pointers([h | tail], [rh | rtail]) when h == rh do
    two_pointers(tail, rtail)
  end

  def two_pointers(_, _), do: false
end
