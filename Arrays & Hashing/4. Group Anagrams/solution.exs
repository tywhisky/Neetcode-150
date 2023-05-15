defmodule Solution do
  @spec group_anagrams(strs :: [String.t]) :: [[String.t]]
  def group_anagrams(strs) do
    strs
    |> Enum.map(&{&1 |> String.graphemes() |> Enum.sort(), &1})
    |> Enum.group_by(&elem(&1, 0), &elem(&1, 1))
    |> Enum.map(&elem(&1, 1))
  end
end
