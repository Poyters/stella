defmodule STELLATest do
  use ExUnit.Case
  doctest STELLA

  test "greets the world" do
    assert STELLA.hello() == :world
  end
end
