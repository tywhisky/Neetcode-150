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
  @spec build_tree(preorder :: [integer], inorder :: [integer]) :: TreeNode.t | nil
  def build_tree(preorder, inorder) do
    build(preorder, inorder)
  end

  defp build([], []), do: nil
  defp build([leaf], [leaf]), do: %TreeNode{val: leaf, left: nil, right: nil}

  defp build([h | tail], inorder) do
    {left, right} = find_and_split(inorder, [], h)
    %TreeNode{val: h, left: build_tree(
      tail -- right, left
    ), right: build_tree(
      tail -- left, right
    )}
  end

  defp find_and_split([h | tail], prev, target) when h == target do
    {Enum.reverse(prev), tail}
  end

  defp find_and_split([h | tail], prev, target) do
    find_and_split(tail, [h | prev], target)
  end
end
