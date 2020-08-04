defmodule StellaTest do
  use ExUnit.Case
  doctest Stella

  test "greets the world" do
    assert Stella.hello() == :world
  end
end
