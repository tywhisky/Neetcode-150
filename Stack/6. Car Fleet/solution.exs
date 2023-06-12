defmodule Solution do
  @spec car_fleet(target :: integer, position :: [integer], speed :: [integer]) :: integer
  def car_fleet(target, position, speed) do
    position
    |> Enum.zip(speed)
    |> Enum.sort_by(&elem(&1, 0), :desc)
    |> Enum.reduce({0, 0}, fn
      {p, s}, {result, lowest} ->
        arrive_time = (target - p) / s

        (lowest < arrive_time && {result + 1, arrive_time}) || {result, lowest}
    end)
    |> elem(0)
  end
end
