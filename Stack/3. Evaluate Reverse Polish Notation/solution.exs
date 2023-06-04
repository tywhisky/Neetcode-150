defmodule Solution do
  @spec eval_rpn(tokens :: [String.t()]) :: integer
  def eval_rpn(tokens) do
    do_cal(tokens, [])
  end

  def do_cal([], [result]), do: result

  def do_cal(["+" | tail], [num1, num2 | r_tail]) do
    do_cal(tail, [num1 + num2 | r_tail])
  end

  def do_cal(["-" | tail], [num1, num2 | r_tail]) do
    do_cal(tail, [num2 - num1 | r_tail])
  end

  def do_cal(["*" | tail], [num1, num2 | r_tail]) do
    do_cal(tail, [num1 * num2 | r_tail])
  end

  def do_cal(["/" | tail], [num1, num2 | r_tail]) do
    do_cal(tail, [div(num2, num1) | r_tail])
  end

  def do_cal([num | tail], rest) do
    do_cal(tail, [String.to_integer(num) | rest])
  end
end
