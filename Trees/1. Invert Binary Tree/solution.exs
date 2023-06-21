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
  @spec invert_tree(root :: TreeNode.t | nil) :: TreeNode.t | nil
  def invert_tree(root) do
    dfs(root, nil)
  end

  def dfs(%{left: nil, right: nil, val: val} = curr, parent) do
    %TreeNode{next: curr}
  end
end
