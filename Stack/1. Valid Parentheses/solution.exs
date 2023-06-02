defmodule Solution do
  @spec is_valid(s :: String.t) :: boolean
  def is_valid(s) do
    s
    |> String.graphemes()
    |> stack([])
  end

  def stack([], []), do: true

  def stack([")" | tail], ["(" | stack]) do
    stack(tail, stack)
  end

    def stack(["]" | tail], ["[" | stack]) do
    stack(tail, stack)
  end

    def stack(["}" | tail], ["{" | stack]) do
    stack(tail, stack)
  end

  def stack([h | tail], stack) when h in ["(", "{", "["] do
    stack(tail, [h | stack])
  end

  def stack(_, _), do: false
end
