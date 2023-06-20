defmodule Solution do
  @spec find_duplicate(nums :: [integer]) :: integer
  def find_duplicate(nums) do
    nums -- Enum.uniq(nums)
    |> List.first()
  end
end
