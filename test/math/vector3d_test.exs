defmodule Vector3DTest do
  use ExUnit.Case
  doctest Vector3D

  test "create a new vector from given values" do
    assert Vector3D.new(1, 2, 3) === %{x: 1, y: 2, z: 3}
  end

  test "create a new vector" do
    assert Vector3D.new() === %{x: 0, y: 0, z: 0}
  end

  test "calculate vector length 1" do
    assert Vector3D.length(%{x: 0, y: 0, z: 0}) === 0.0
  end

  test "calculate vector length 2" do
    assert Vector3D.length(%{x: 2, y: 2, z: 1}) === 3.0
  end

  test "calculate vector length 3" do
    assert Vector3D.length(%{x: 3, y: 3, z: 7}) === 8.18535277187245
  end

  test "increment current vector by another one" do
    assert Vector3D.add(%{x: 3, y: 3, z: 1}, %{x: 1, y: 2, z: 1}) 
      === %{x: 4, y: 5, z: 2}
  end

  test "increment current vector by another one 2" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.add(%{x: 1, y: 1, z: 1}) 
      |> Vector3D.add(%{x: 1, y: 1, z: 1}) 
      === %{x: 5, y: 5, z: 5}
  end

  test "Decrement current vector by another one" do
    assert Vector3D.sub(%{x: 3, y: 3, z: 2}, %{x: 1, y: 2, z: 1}) 
      === %{x: 2, y: 1, z: 1}
  end

  test "Decrement current vector by another one 2" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.sub(%{x: 1, y: 1, z: 1}) 
      |> Vector3D.sub(%{x: 1, y: 1, z: 1}) 
      === %{x: 1, y: 1, z: 1}
  end

  test "Mulitply current vector by another one" do
    assert Vector3D.multiply(%{x: 3, y: 3, z: 3}, %{x: 1, y: 2, z: 1})
      === %{x: 3, y: 6, z: 3}
  end

  test "Mulitply current vector by another one 2" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.multiply(%{x: 2, y: 2, z: 2}) 
      |> Vector3D.multiply(%{x: 2, y: 2, z: 2}) 
      === %{x: 12, y: 12, z: 12}
  end

  test "Scale vector by scalar" do
    assert Vector3D.scale(%{x: 3, y: 3, z: 3}, 2) 
      === %{x: 6, y: 6, z: 6}
  end

  test "Scale vector by scalar; pipe" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.scale(2) 
      |> Vector3D.scale(3) 
      === %{x: 18, y: 18, z: 18}
  end

  test "Divide current vector by another one" do
    assert Vector3D.divide(%{x: 7, y: 1, z: 3}, %{x: 1, y: 2, z: 2}) 
      === %{x: 7.0, y: 0.5, z: 1.5}
  end

  test "Divide current vector by another one 2" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.divide(%{x: 2, y: 2, z: 2}) 
      |> Vector3D.divide(%{x: 2, y: 2, z: 2}) 
      === %{x: 0.75, y: 0.75, z: 0.75}
  end

  test "Check if vectors are equal" do
    assert Vector3D.equals(%{x: 7, y: 1, z: 2}, %{x: 1, y: 2, z: 1})
      === false
  end

  test "Check if vectors are equal; new pipe" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.divide(%{x: 2, y: 2, z: 2}) 
      |> Vector3D.divide(%{x: 2, y: 2, z: 2}) 
      |> Vector3D.equals(%{x: 0.75, y: 0.75, z: 0.75}) 
      === true
  end

  test "Check if vectors are equal; new pipe 2" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.divide(%{x: 3, y: 3, z: 3})
      |> Vector3D.equals(%{x: 1, y: 1, z: 1.0}) 
      === true
  end

  test "Convert vector to list" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.divide(%{x: 3, y: 3, z: 3})
      |> Vector3D.to_list() 
      === [1.0, 1.0, 1.0]
  end

  test "Convert vector to struct" do
    assert Vector3D.new(3, 3, 3)
      |> Vector3D.divide(%{x: 3, y: 3, z: 3})
      |> Vector3D.to_list() 
      |> Vector3D.to_struct() 
      === %{x: 1.0, y: 1.0, z: 1.0}
  end

  test "Calculate distance between vectors" do
    assert Vector3D.distance(%{x: 7, y: 1, z: 2}, %{x: 1, y: 2, z: -4}) 
      === 8.54400374531753
  end

end
 