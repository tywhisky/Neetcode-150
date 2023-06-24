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
  @spec level_order(root :: TreeNode.t | nil) :: [[integer]]
  def level_order(nil), do: []
  def level_order(root) do
    recursion([root], [])
  end

  def recursion([], result), do: Enum.reverse(result)

  def recursion(nodes, result) do
    new_nodes =
        nodes
        |> Enum.reduce([], fn
            %{left: nil, right: nil}, acc -> acc
            %{left: nil, right: right}, acc -> [right | acc]
            %{left: left, right: nil}, acc -> [left | acc]
            %{left: left, right: right}, acc -> [right, left | acc]
        end)
        |> Enum.reverse()

    vals = Enum.map(nodes, fn %{val: val} -> val end)

    recursion(new_nodes, [vals | result])
  end
end
