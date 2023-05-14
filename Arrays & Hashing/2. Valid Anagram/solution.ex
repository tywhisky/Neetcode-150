defmodule Solution do
  @spec is_anagram(s :: String.t, t :: String.t) :: boolean
  def is_anagram(s, t) do
    build_map(s) == build_map(t)
  end

  def build_map(s) when is_binary(s) do
    build_map(String.graphemes(s), %{})
  end

  def build_map([], map), do: map

  def build_map([h | tail], map) do
    build_map(tail, Map.update(map, h, 0, & &1 + 1))
  end
end
