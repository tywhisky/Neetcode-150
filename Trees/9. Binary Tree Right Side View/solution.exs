# Definition for a binary tree node.
#
# defmodule TreeNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           left: TreeNode.t() | nil,
#           right: TreeNode.t() | nil
#         }
#   defstruct val: 0, left: nil, right: nil
# end

defmodule Solution do
  @spec right_side_view(root :: TreeNode.t | nil) :: [integer]
  def right_side_view(root) do
    solve(root, 0, %{})
    |> Enum.sort()
    |> Enum.map(fn {_, k} -> k end)
  end

  def solve(nil, level, record), do: record

  def solve(%{left: left, right: right, val: val}, level, record) do
      record = Map.put(record, level, val)
      acc = solve(left, level+1,  record)
      solve(right, level+1, acc)
  end
end
