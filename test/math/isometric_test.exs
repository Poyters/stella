defmodule IsometricTest do
  use ExUnit.Case
  doctest Isometric

  test "Isometric: 1, 2" do
    assert Isometric.convert_cartesian_to_isometric(1, 2) == %{x: -1, y: 1.5}
  end

  test "Isometric: -1, 2, 3" do
    assert Isometric.convert_cartesian_to_isometric(-1, 2, 3) == %{x: -3, y: -2.5}
  end

  test "Isometric: -10, -2, -3" do
    assert Isometric.convert_cartesian_to_isometric(-10, -2, -3) == %{x: -8, y: -3.0}
  end

  test "Isometric to string, 2, 3" do
    assert Isometric.to_string(2, 3) == "x: 2, y: 3"
  end

  test "Isometric to string, 6, -22, 3" do
    assert Isometric.to_string(6, -22, 3) == "x: 6, y: -22, z: 3"
  end

  test "Isometric to string, 3dpoint" do
    assert Isometric.point_to_string(%{x: 6, y: -22, z: 3}) == "x: 6, y: -22, z: 3"
  end

  test "Isometric to string, 2dpoint" do
    assert Isometric.point_to_string(%{x: 6, y: -22}) == "x: 6, y: -22"
  end

  test "String to point, 2d" do
    assert Isometric.string_to_point("x: 1, y: -7") == %{x: 1, y: -7}
  end

  test "String to point, 3d" do
    assert Isometric.string_to_point("x: 1, y: -7, z: 8") == %{x: 1, y: -7, z: 8}
  end

  test "Distance, part 1" do
    assert  Isometric.distance_between(
      %{x: -1, y: 2}, %{x: 1, y: 2}
    ) == 2
  end

  test "Distance, part 2" do
    assert  Isometric.distance_between(
      %{x: -90, y: -20}, %{x: -10, y: 0}
    ) == 100
  end
end
