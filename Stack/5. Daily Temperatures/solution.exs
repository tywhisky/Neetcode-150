defmodule Solution do
  @spec daily_temperatures(temperatures :: [integer]) :: [integer]
  def daily_temperatures(temperatures) do
    recursive(Enum.with_index(temperatures), [], %{})
    |> Enum.sort()
    |> Enum.map(&elem(&1, 1))
  end

  def recursive([], _queue, result), do: result
  def recursive([h | tail], queue, result) do
    {new_queue, new_result} = maintain(h, queue, result)
    recursive(tail, new_queue, new_result)
  end

  def maintain({v, i}, [{vv, ii} | tail], result) when v > vv do
    maintain({v, i}, tail, Map.put(result, ii, i - ii))
  end

  def maintain({v, i}, queue, result) do
    {[{v, i} | queue], Map.put(result, i, 0)}
  end
end
