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
  @spec kth_smallest(root :: TreeNode.t | nil, k :: integer) :: integer
  def kth_smallest(root, k) do
    dfs(root)
    |> List.flatten()
    |> Enum.at(k - 1)
  end

  def dfs(%{val: val, left: nil, right: nil}) do
    [val]
  end

  def dfs(%{val: val, left: left, right: nil}) do
    [dfs(left), val]
  end

  def dfs(%{val: val, left: nil, right: right}) do
    [val, dfs(right)]
  end

  def dfs(%{val: val, left: left, right: right}) do
    [dfs(left), val, dfs(right)]
  end
end
