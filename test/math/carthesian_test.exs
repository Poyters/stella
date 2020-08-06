defmodule CarthesianTest do
  use ExUnit.Case
  doctest Carthesian

  @point1 %{
    x: 1,
    y: 2,
    z: 3
  }

  @point2 %{
    x: 9,
    y: 1,
    z: 3
  }


  test "Check proximity: 1,2,3" do
    assert Carthesian.proximity(@point1) == 6
  end

  test "Check proximity: 9,1,3" do
    assert Carthesian.proximity(@point2) == 13
  end

end
