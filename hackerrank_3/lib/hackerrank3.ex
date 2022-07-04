defmodule Hackerrank3 do
  defp read_list,  do:
    IO.read(:stdio, :all)
    |> String.split([" ", "\n"]) #retirando \n da string
    |> Enum.map(fn x -> String.to_integer(x) end) #mapeando todas os elementos e convertendo eles para inteiro


  def main() do
      read_list()
      |> Enum.with_index #Busco index da list
      |> Enum.filter(fn {_, index} -> (rem(index, 2) == 1) end) #filtrando os indexs
      |> Enum.map(fn {item, _} -> IO.puts item  end)
  end
end

#Hackerrank3.main
