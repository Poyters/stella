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

  test "Check ordering by x param, less" do
    assert Carthesian.order_by_x(@point1, @point2) == -1
  end

  test "Check ordering by x param, more" do
    assert Carthesian.order_by_x(@point2, @point1) == 1
  end

  test "Check ordering by y param, less" do
    assert Carthesian.order_by_y(@point1, @point2) == 1
  end

  test "Check ordering by y param, more" do
    assert Carthesian.order_by_y(@point2, @point1) == -1
  end

  test "Check ordering by z param, less" do
    assert Carthesian.order_by_z(@point1, @point2) == 1
  end

  test "Check ordering by z param, more" do
    assert Carthesian.order_by_z(@point2, @point1) == 1
  end

end
