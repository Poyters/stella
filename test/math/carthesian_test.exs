defmodule CartesianTest do
  use ExUnit.Case
  doctest Cartesian

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

  @point3 %{
    x: 1,
    y: 1
  }

  @point4 %{
    x: -1,
    y: 1
  }

  @point5 %{
    x: -1,
    y: -1
  }

  @point6 %{
    x: 1,
    y: -1
  }

  @point7 %{
    x: 1,
    y: 2,
    z: 3
  }

  @point8 %{
    x: -1,
    y: 2,
    z: 3
  }

  @point9 %{
    x: -1,
    y: -2,
    z: 3
  }

  @point10 %{
    x: 1,
    y: -2,
    z: 3
  }

  @point11 %{
    x: 1,
    y: -2,
    z: -3
  }

  @point12 %{
    x: -1,
    y: -2,
    z: -3
  }

  @point13 %{
    x: -1,
    y: 2,
    z: -3
  }

  @point14 %{
    x: 1,
    y: 2,
    z: -3
  }









  test "Check proximity: 1,2,3" do
    assert Cartesian.proximity(@point1) == 6
  end

  test "Check proximity: 9,1,3" do
    assert Cartesian.proximity(@point2) == 13
  end

  test "Check ordering by x param, less" do
    assert Cartesian.order_by_x(@point1, @point2) == -1
  end

  test "Check ordering by x param, more" do
    assert Cartesian.order_by_x(@point2, @point1) == 1
  end

  test "Check ordering by y param, less" do
    assert Cartesian.order_by_y(@point1, @point2) == 1
  end

  test "Check ordering by y param, more" do
    assert Cartesian.order_by_y(@point2, @point1) == -1
  end

  test "Check ordering by z param, less" do
    assert Cartesian.order_by_z(@point1, @point2) == 1
  end

  test "Check ordering by z param, more" do
    assert Cartesian.order_by_z(@point2, @point1) == 1
  end

  test "Order by distance, less" do
    assert Cartesian.order_by_distance(@point1, @point2) == -1
  end

  test "Order by distance, more" do
    assert Cartesian.order_by_distance(@point2, @point1) == 1
  end


  test "Determine  quadrant; 1" do
    assert Cartesian.determine_quadrant(@point3) == 1
  end


  test "Determine  quadrant; 2" do
    assert Cartesian.determine_quadrant(@point4) == 2
  end


  test "Determine  quadrant; 3" do
    assert Cartesian.determine_quadrant(@point5) == 3
  end


  test "Determine  quadrant; 4" do
    assert Cartesian.determine_quadrant(@point6) == 4
  end

  test "Determine octan; 0" do
    assert Cartesian.determine_octan(@point7) == 0
  end

  test "Determine octan; 1" do
    assert Cartesian.determine_octan(@point8) == 1
  end

  test "Determine octan; 2" do
    assert Cartesian.determine_octan(@point9) == 2
  end

  test "Determine octan; 3" do
    assert Cartesian.determine_octan(@point10) == 3
  end

  test "Determine octan; 4" do
    assert Cartesian.determine_octan(@point11) == 4
  end

  test "Determine octan; 5" do
    assert Cartesian.determine_octan(@point12) == 5
  end

  test "Determine octan; 6" do
    assert Cartesian.determine_octan(@point13) == 6
  end

  test "Determine octan; 7" do
    assert Cartesian.determine_octan(@point14) == 7
  end
end
