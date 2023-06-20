# Definition for singly-linked list.
#
# defmodule ListNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           next: ListNode.t() | nil
#         }
#   defstruct val: 0, next: nil
# end

defmodule Solution do
  @spec merge_k_lists(lists :: [ListNode.t | nil]) :: ListNode.t | nil
  def merge_k_lists([]), do: nil
  def merge_k_lists(list) do
    node2list(list, [])
    |> Enum.sort(:desc)
    |> list2node(nil)
  end

  def list2node([], node), do: node

  def list2node([h | tail], node) do
    list2node(tail, %ListNode{next: node, val: h})
  end

  def node2list([],result), do: result

  def node2list([h | tail], result) do
    node2list(tail, do_node2list(h, []) ++ result)
  end

  def do_node2list(nil, result), do: result

  def do_node2list(node, result) do
    do_node2list(node.next, [node.val | result])
  end
end
