defmodule Solution do
  @spec is_valid_sudoku(board :: [[char]]) :: boolean
  def is_valid_sudoku(board) do
    cols = Enum.zip_with(board, &List.flatten(&1))

    sub_box =
      board
      |> Enum.map(&Enum.chunk_every(&1, 3))
      |> Enum.zip_with(& &1)
      |> Enum.flat_map(&Enum.chunk_every(&1, 3))
      |> Enum.map(&Enum.reduce(&1, [], fn x, acc -> acc ++ x end))

    check(board) && check(cols) && check(sub_box)
  end

  def check([]), do: true

  def check([h | tail]) do
    letters = Enum.reject(h, & &1 == ?.)

    case Enum.uniq(letters) == letters do
      true -> check(tail)
      false -> false
    end
  end
end
