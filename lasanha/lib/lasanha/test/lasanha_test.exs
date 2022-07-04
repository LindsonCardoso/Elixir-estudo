defmodule LasanhaTest do
  use ExUnit.Case
  doctest Lasanha

  test "greets the world" do
    assert Lasanha.hello() == :world
  end
end
