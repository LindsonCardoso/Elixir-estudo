defmodule FuzzyTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, return the converted list" do
      expected_response = {:ok, [1, 2, :fizz, :buzz, :fizzbuzz, 22, 59]}
      assert Fuzzy.build("numbers.txt") == expected_response
    end
  end

end
