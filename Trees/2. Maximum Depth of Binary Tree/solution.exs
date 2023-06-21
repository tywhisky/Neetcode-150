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
  @spec max_depth(root :: TreeNode.t | nil) :: integer
  def max_depth(nil), do: 0
  def max_depth(root) do
    dfs(root, 1, 1)
  end

  def dfs(nil, curr, result), do: max(curr, result)

  def dfs(%{left: nil, right: nil}, curr, result) do
    max(curr, result)
  end

  def dfs(%{left: left, right: right}, curr, result) do
    l = left && dfs(left, curr + 1, result) || max(curr + 1, result)
    right && dfs(right, curr + 1, l) || l
  end
end
