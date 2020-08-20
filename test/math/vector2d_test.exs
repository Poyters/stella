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

  test "Mulitply current vector by another one" do
    assert Vector2D.multiply(%{x: 3, y: 3}, %{x: 1, y: 2}) === %{x: 3, y: 6}
  end

  test "Mulitply current vector by another one 2" do
    assert Vector2D.new(3, 3)
      |> Vector2D.multiply(%{x: 2, y: 2}) 
      |> Vector2D.multiply(%{x: 2, y: 2}) 
      === %{x: 12, y: 12}
  end

  test "Scale vector by scalar" do
    assert Vector2D.scale(%{x: 3, y: 3}, 2) === %{x: 6, y: 6}
  end

  test "Scale vector by scalar; pipe" do
    assert Vector2D.new(3, 3)
      |> Vector2D.scale(2) 
      |> Vector2D.scale(3) 
      === %{x: 18, y: 18}
  end

  test "Divide current vector by another one" do
    assert Vector2D.divide(%{x: 7, y: 1}, %{x: 1, y: 2}) === %{x: 7.0, y: 0.5}
  end

  test "Divide current vector by another one 2" do
    assert Vector2D.new(3, 3)
      |> Vector2D.divide(%{x: 2, y: 2}) 
      |> Vector2D.divide(%{x: 2, y: 2}) 
      === %{x: 0.75, y: 0.75}
  end

  test "Check if vectors are equal" do
    assert Vector2D.equals(%{x: 7, y: 1}, %{x: 1, y: 2}) === :false
  end

  test "Check if vectors are equal; new pipe" do
    assert Vector2D.new(3, 3)
      |> Vector2D.divide(%{x: 2, y: 2}) 
      |> Vector2D.divide(%{x: 2, y: 2}) 
      |> Vector2D.equals(%{x: 0.75, y: 0.75}) 
      === :true
  end

  test "Check if vectors are equal; new pipe 2" do
    assert Vector2D.new(3, 3)
      |> Vector2D.divide(%{x: 3, y: 3})
      |> Vector2D.equals(%{x: 1, y: 1}) 
      === :true
  end

  test "Convert vector to list" do
    assert Vector2D.new(3, 3)
      |> Vector2D.divide(%{x: 3, y: 3})
      |> Vector2D.to_list() 
      === [1.0, 1.0]
  end

  test "Convert vector to struct" do
    assert Vector2D.new(3, 3)
      |> Vector2D.divide(%{x: 3, y: 3})
      |> Vector2D.to_list() 
      |> Vector2D.to_struct() 
      === %{x: 1.0, y: 1.0}
  end

  test "Calculate distance between vectors" do
    assert Vector2D.distance(%{x: 7, y: 1}, %{x: 1, y: 2}) === 6.082762530298219
  end

  test "Rotate vector by angel" do
    assert Vector2D.rotate(%{x: 7, y: 3}, 3) 
      === %{x: -7.353307500382719, y: -1.982137433382266}
  end

end
 