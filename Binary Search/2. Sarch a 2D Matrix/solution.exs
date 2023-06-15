defmodule Solution do
  @spec search_matrix(matrix :: [[integer]], target :: integer) :: boolean
def search_matrix(matrix, target) do
    tuple =
        matrix
        |> List.flatten()
        |> List.to_tuple()

    binary_search(tuple, 0, tuple_size(tuple) - 1, target)
end

def binary_search(tuple, left, right, target) when left >= right do
    mid = div(left + right, 2)
    elem(tuple, mid) == target
end

def binary_search(tuple, left, right, target) do
    mid = div(left + right, 2)
    case elem(tuple, mid) do
        curr when curr == target -> true
        curr when curr > target ->
            binary_search(tuple, left, mid, target)
        curr -> binary_search(tuple, mid + 1, right, target)
    end
end
end
