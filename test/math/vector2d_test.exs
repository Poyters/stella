defmodule Vector2DTest do
  use ExUnit.Case
  doctest Vector2D

  test "create a new vector from given values" do
    assert Vector2D.new(1, 2) === %{x: 1, y: 2}
  end

  test "create a new vector" do
    assert Vector2D.new() === %{x: 0, y: 0}
  end

  test "calculate vector length 1" do
    assert Vector2D.length(%{x: 0, y: 0}) === 0.0
  end

  test "calculate vector length 2" do
    assert Vector2D.length(%{x: 2, y: 2}) === 2.8284271247461903
  end

  test "calculate vector length 3" do
    assert Vector2D.length(%{x: 3, y: 3}) === 4.242640687119285
  end

  test "increment current vector by another one" do
    assert Vector2D.add(%{x: 3, y: 3}, %{x: 1, y: 2}) === %{x: 4, y: 5}
  end

  test "increment current vector by another one 2" do
    assert Vector2D.new(3, 3)
      |> Vector2D.add(%{x: 1, y: 1}) 
      |> Vector2D.add(%{x: 1, y: 1}) 
      === %{x: 5, y: 5}
  end

  test "Decrement current vector by another one" do
    assert Vector2D.sub(%{x: 3, y: 3}, %{x: 1, y: 2}) === %{x: 2, y: 1}
  end

  test "Decrement current vector by another one 2" do
    assert Vector2D.new(3, 3)
      |> Vector2D.sub(%{x: 1, y: 1}) 
      |> Vector2D.sub(%{x: 1, y: 1}) 
      === %{x: 1, y: 1}
  end

end
 