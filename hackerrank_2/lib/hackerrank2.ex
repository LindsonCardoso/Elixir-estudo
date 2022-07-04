defmodule Hackerrank2 do

  def solve( [head | tail] ) do
    IO.puts head

    Enum.each(tail, fn (element) ->
      if element < head do
        IO.puts element
      end
    end)
  end


  def main() do
    IO.read(:stdio, :all)
    |> String.split
    |> Enum.map(&String.to_integer(&1))
    |> solve
  end


end


Hackerrank2.main
