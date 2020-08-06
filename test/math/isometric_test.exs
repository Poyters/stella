defmodule IsometricTest do
  use ExUnit.Case
  doctest Isometric

  test "Cartesian: 1, 2" do
    assert Isometric.convert_cartesian_to_isometric(1, 2) == %{x: -1, y: 1.5}
  end

  test "Cartesian: -1, 2, 3" do
    assert Isometric.convert_cartesian_to_isometric(-1, 2, 3) == %{x: -3, y: -2.5}
  end

  test "Cartesian: -10, -2, -3" do
    assert Isometric.convert_cartesian_to_isometric(-10, -2, -3) == %{x: -8, y: -3.0}
  end
end
