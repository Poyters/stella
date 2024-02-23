defmodule StellaTest do
  use ExUnit.Case
  doctest Stella

  test "checkout version" do
    assert Stella.version == '0.7.1'
  end

end
