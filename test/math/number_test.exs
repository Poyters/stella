defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  test "1 is power of 1" do
    assert Number.is_power(1, 1) == true
  end

  test "10 is power of 1" do
    assert Number.is_power(10, 1) == true
  end

end
